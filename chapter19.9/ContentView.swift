//
//  ContentView.swift
//  chapter19.9
//
//  Created by HEE TAE YANG on 2020/06/08.
//  Copyright © 2020 yht. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 10){
            Text("Hello, World!")
            .modifier(StandTitle())
            Text("Hello, World!")
            .modifier(StandTitle())
        }
    }
}

// 커스텀 수정자
// 나만의 커스텀 수정자: 이것은 뷰에 자주 적용되는 대표적인 수정자들을 갖고자 할때 특히 유용하다.
// 만약 ViewModifier 프로토콜을 따르는 구조체로 선언 했다면, 구문안의 body만 입력해도 자동으로 func 구문이 완성된다!

struct StandTitle:ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .background(Color.white)
            .border(Color.gray, width: 0.2)
            .shadow(color: Color.yellow, radius: 5, x:0, y:10)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

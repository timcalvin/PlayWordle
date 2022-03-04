//
//  ContentView.swift
//  PlayWordle
//
//  Created by Tim Bryant on 3/4/22.
//

import SwiftUI
import WebKit

struct ContentView: View {
    
    let urlString = "https://www.nytimes.com/games/wordle/index.html"
    let webView = WKWebView()
    
    var body: some View {
        WordleView(url: URL(string: urlString)!)
    }
}

struct WordleView: UIViewRepresentable {
    
    var url: URL
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        let request = URLRequest(url: url)
        uiView.load(request)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

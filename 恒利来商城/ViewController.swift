//
//  ViewController.swift
//  恒利来商城
//
//  Created by will on 2017/8/9.
//  Copyright © 2017年 hll. All rights reserved.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    var box = UIView()
    let hllWeb = UIWebView();
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(hllWeb)
        hllWeb.snp.makeConstraints { (make) -> Void in
            make.width.equalToSuperview()
            make.height.equalToSuperview()
            make.center.equalTo(self.view)
        }
    
        // 1.设置访问资源
        let url = URL(string: "http://www.hll.com.cn/m");
        
        // 2.建立网络请求
        let request = URLRequest(url: url!);
        // 3.加载网络请求
        hllWeb.loadRequest(request)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


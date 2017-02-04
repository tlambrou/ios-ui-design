//
//  DrawCircle.swift
//  UIBezierPath
//
//  Created by mitchell hudson on 2/2/17.
//  Copyright © 2017 Mitchell Hudson. All rights reserved.
//

import UIKit

class DrawCircle: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setup() {
        // Make a shapelayer
        let shapeLayer = CAShapeLayer()
        // Add as a sub layer
        layer.addSublayer(shapeLayer)
        // Draw a path. This method draws an oval within a rectangle.
        let path = UIBezierPath(ovalIn: bounds)
        // Set the stroke width, color, and fill
        shapeLayer.path = path.cgPath
        shapeLayer.lineWidth = 16
        shapeLayer.strokeColor = UIColor.red.cgColor
        shapeLayer.fillColor = UIColor.clear.cgColor
        
        // Animate the circle 
        let animation = CABasicAnimation(keyPath: "strokeEnd")
        animation.duration = 5
        animation.fromValue = 0
        animation.toValue = 1
        
        shapeLayer.add(animation, forKey: "strokeEnd")
    }
    
    
    /*
     // Only override draw() if you perform custom drawing.
     // An empty implementation adversely affects performance during animation.
     override func draw(_ rect: CGRect) {
     // Drawing code
     }
     */
    
}

//
//  ViewController.m
//  IOSDay13_AnimationApp
//
//  Created by Student-003 on 22/03/18.
//  Copyright © 2018 felix. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)animate1:(UIButton *)sender
{
    
    switch (sender.tag)
    {
        case 101:
            [self animateUpLeft];
            break;
            
        case 102:
            [self animateUp];
            break;
            
        case 103:
            [self animateUpRight];
            break;
            
        case 104:
            [self animateLeft];
            break;
            
        case 105:
            [self animateCentre];
            break;
            
        case 106:
            [self animateRight];
            break;
            
        case 107:
            [self animateDownLeft];
            break;
            
        case 108:
            [self animateDown];
            break;
            
        case 109:
            [self animateDownright];
            break;
            
        default:
            break;
    }
    

    
}

-(void)animateUp
{
    
    if (self.ballImage.frame.origin.x-100>0 && self.ballImage.frame.origin.y-100>0)
    {
        [UIView animateWithDuration:0.5 delay:0 options:UIViewAnimationOptionCurveEaseIn animations:^{self.ballImage.frame=CGRectMake(self.ballImage.frame.origin.x, self.ballImage.frame.origin.y-100, self.ballImage.frame.size.width, self.ballImage.frame.size.height);} completion:^(BOOL finished){NSLog(@"Up Animation Complete");}];
    }
    else
    {
        NSLog(@"Bish Tumcha Jaat Nai Ajun vr");
    }
    
    
}

-(void)animateLeft
{
    
    if(self.ballImage.frame.origin.x-100>0 && self.ballImage.frame.origin.y)
    {
    [UIView animateWithDuration:0.5 delay:0 options:UIViewAnimationOptionCurveEaseIn animations:^{self.ballImage.frame=CGRectMake(self.ballImage.frame.origin.x-100, self.ballImage.frame.origin.y, self.ballImage.frame.size.width, self.ballImage.frame.size.height);} completion:^(BOOL finished){NSLog(@"Up Animation Complete");}];
    }
    else
    {
        NSLog(@"Bish Tumcha Jaat Nai Ajun Leftla");
    }
    
}

-(void)animateRight
{

    if(self.ballImage.frame.origin.x+100<365 && self.ballImage.frame.origin.y)
    {
    [UIView animateWithDuration:0.5 delay:0 options:UIViewAnimationOptionCurveEaseIn animations:^{self.ballImage.frame=CGRectMake(self.ballImage.frame.origin.x+100, self.ballImage.frame.origin.y, self.ballImage.frame.size.width, self.ballImage.frame.size.height);} completion:^(BOOL finished){NSLog(@"Up Animation Complete");}];
    }
    else
    {
    NSLog(@"Bish Tumcha Jaat Nai Ajun Rightla");
    }
    
}

-(void)animateDown
{
    
    if(self.ballImage.frame.origin.x>375 && self.ballImage.frame.origin.y+100<439)
    {
    [UIView animateWithDuration:0.5 delay:0 options:UIViewAnimationOptionCurveEaseIn animations:^{self.ballImage.frame=CGRectMake(self.ballImage.frame.origin.x, self.ballImage.frame.origin.y+100, self.ballImage.frame.size.width, self.ballImage.frame.size.height);} completion:^(BOOL finished){NSLog(@"Up Animation Complete");}];
    }
    else
    {
        NSLog(@"Bish Tumcha Jaat Nai Ajun Khali");
    }
    
}

-(void)animateUpLeft
{
    
    [UIView animateWithDuration:0.5 delay:0 options:UIViewAnimationOptionCurveEaseIn animations:^{self.ballImage.frame=CGRectMake(self.ballImage.frame.origin.x-50, self.ballImage.frame.origin.y-50, self.ballImage.frame.size.width, self.ballImage.frame.size.height);} completion:^(BOOL finished){NSLog(@"Up Animation Complete");}];
    
}

-(void)animateUpRight
{
    
    [UIView animateWithDuration:0.5 delay:0 options:UIViewAnimationOptionCurveEaseIn animations:^{self.ballImage.frame=CGRectMake(self.ballImage.frame.origin.x+50, self.ballImage.frame.origin.y-50, self.ballImage.frame.size.width, self.ballImage.frame.size.height);} completion:^(BOOL finished){NSLog(@"Up Animation Complete");}];
    
}

-(void)animateDownLeft
{
    
    [UIView animateWithDuration:0.5 delay:0 options:UIViewAnimationOptionCurveEaseIn animations:^{self.ballImage.frame=CGRectMake(self.ballImage.frame.origin.x-50, self.ballImage.frame.origin.y+50, self.ballImage.frame.size.width, self.ballImage.frame.size.height);} completion:^(BOOL finished){NSLog(@"Up Animation Complete");}];
    
}

-(void)animateDownright
{
    
    [UIView animateWithDuration:0.5 delay:0 options:UIViewAnimationOptionCurveEaseIn animations:^{self.ballImage.frame=CGRectMake(self.ballImage.frame.origin.x+50, self.ballImage.frame.origin.y+50, self.ballImage.frame.size.width, self.ballImage.frame.size.height);} completion:^(BOOL finished){NSLog(@"Up Animation Complete");}];
    
}

-(void)animateCentre
{
    
    [UIView animateWithDuration:0.5 delay:0 options:UIViewAnimationOptionCurveEaseIn animations:^{self.ballImage.center=self.view.center;} completion:^(BOOL finished){NSLog(@"Up Animation Complete");}];
    
}
@end

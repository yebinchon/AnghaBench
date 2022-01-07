
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PWMD4 ;
 int PWM_FRACTION_TO_WIDTH (int *,int,int ) ;
 int planck_ez_left_led_duty ;
 int pwmEnableChannel (int *,int,int ) ;

void planck_ez_left_led_on(void){
    pwmEnableChannel(&PWMD4, 3, PWM_FRACTION_TO_WIDTH(&PWMD4,0xFFFF,planck_ez_left_led_duty));
}

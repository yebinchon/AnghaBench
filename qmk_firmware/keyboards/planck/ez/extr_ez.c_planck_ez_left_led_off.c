
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PWMD4 ;
 int pwmDisableChannel (int *,int) ;

void planck_ez_left_led_off(void){
    pwmDisableChannel(&PWMD4, 3);
}

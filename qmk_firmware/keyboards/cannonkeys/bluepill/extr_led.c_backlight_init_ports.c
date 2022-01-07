
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GPIOA ;
 int PAL_MODE_STM32_ALTERNATE_PUSHPULL ;
 int PWMD1 ;
 int PWM_FRACTION_TO_WIDTH (int *,int,int ) ;
 int cie_lightness (int) ;
 int palSetPadMode (int ,int,int ) ;
 int printf (char*) ;
 int pwmCFG ;
 int pwmEnableChannel (int *,int ,int ) ;
 int pwmStart (int *,int *) ;

void backlight_init_ports(void) {
    printf("backlight_init_ports()\n");






}

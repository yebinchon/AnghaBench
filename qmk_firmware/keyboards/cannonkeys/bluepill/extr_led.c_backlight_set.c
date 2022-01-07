
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int BACKLIGHT_LEVELS ;
 int PWMD1 ;
 int PWM_FRACTION_TO_WIDTH (int *,int,int) ;
 scalar_t__ cie_lightness (int) ;
 int is_breathing () ;
 int printf (char*,int) ;
 int pwmDisableChannel (int *,int ) ;
 int pwmEnableChannel (int *,int ,int ) ;

void backlight_set(uint8_t level) {
    printf("backlight_set(%d)\n", level);
}

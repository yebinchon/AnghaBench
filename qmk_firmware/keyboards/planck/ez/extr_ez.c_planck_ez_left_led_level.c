
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint32_t ;


 int PWMD4 ;
 int PWM_FRACTION_TO_WIDTH (int *,int,int) ;
 scalar_t__ cie_lightness (int) ;
 int planck_ez_left_led_duty ;
 int pwmDisableChannel (int *,int) ;
 int pwmEnableChannel (int *,int,int ) ;

void planck_ez_left_led_level(uint8_t level) {
    planck_ez_left_led_duty = (uint32_t)(cie_lightness(0xFFFF * (uint32_t) level / 255));
    if (level == 0) {

        pwmDisableChannel(&PWMD4, 3);
    } else {

        pwmEnableChannel(&PWMD4, 3, PWM_FRACTION_TO_WIDTH(&PWMD4,0xFFFF,planck_ez_left_led_duty));
    }
}

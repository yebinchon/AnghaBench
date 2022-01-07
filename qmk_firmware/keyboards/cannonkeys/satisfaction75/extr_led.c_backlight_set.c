
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint32_t ;


 int BACKLIGHT_LEVELS ;
 int PWMD3 ;
 int PWM_FRACTION_TO_WIDTH (int *,int,int) ;
 scalar_t__ cie_lightness (int) ;
 int is_breathing () ;
 int pwmDisableChannel (int *,int ) ;
 int pwmEnableChannel (int *,int ,int ) ;

void backlight_set(uint8_t level) {
  uint32_t duty = (uint32_t)(cie_lightness(0xFFFF * (uint32_t) level / BACKLIGHT_LEVELS));
  if (level == 0) {

      pwmDisableChannel(&PWMD3, 0);
  } else {

    if(!is_breathing()){
      pwmEnableChannel(&PWMD3, 0, PWM_FRACTION_TO_WIDTH(&PWMD3,0xFFFF,duty));
    }
  }
}

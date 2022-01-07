
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ RGBLIGHT_MODE_BREATHING ;
 int backlight_enable () ;
 int rgblight_enable () ;
 int rgblight_mode (scalar_t__) ;

void eeconfig_init_user(void) {

  rgblight_enable();
  rgblight_mode(RGBLIGHT_MODE_BREATHING+1);

  backlight_enable();
}

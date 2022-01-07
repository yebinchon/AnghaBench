
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long uint8_t ;


 unsigned long _QWERTY ;
 unsigned long eeconfig_read_default_layer () ;
 int rgblight_enable () ;
 int rgblight_mode (int) ;

void matrix_init_user(void) {

  uint8_t default_layer = eeconfig_read_default_layer();

  rgblight_enable();

  if(1) {
   if (default_layer & (1UL << _QWERTY)) {

      rgblight_mode(11);
      }
 else {
      rgblight_mode (12);
      }
  }


}

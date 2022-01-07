
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int rgblight_enable () ;
 int rgblight_mode (int) ;
 int rgblight_setrgb_user_base () ;

void matrix_init_user(void) {
  rgblight_enable();
  rgblight_mode(1);
  rgblight_setrgb_user_base();
}

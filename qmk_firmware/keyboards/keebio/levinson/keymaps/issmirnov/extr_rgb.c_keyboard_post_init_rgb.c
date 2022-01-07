
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RGBLIGHT_MODE_STATIC_LIGHT ;
 int RGB_CLEAR ;
 int rgblight_enable () ;
 int rgblight_mode (int ) ;
 int rgblight_setrgb (int ) ;
 int uprintf (char*) ;

void keyboard_post_init_rgb(void) {
  rgblight_enable();
  rgblight_mode(RGBLIGHT_MODE_STATIC_LIGHT);
  rgblight_setrgb(RGB_CLEAR);
  uprintf("Reset RGB colors");
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int layer_state_set_rgb (int) ;
 int rgblight_enable_noeeprom () ;

void keyboard_post_init_user(void) {
  rgblight_enable_noeeprom();
  layer_state_set_rgb(1);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int keyboard_post_init_user () ;
 int rgblight_enable_noeeprom () ;

void matrix_post_init(void) {
 rgblight_enable_noeeprom();
 keyboard_post_init_user();
}

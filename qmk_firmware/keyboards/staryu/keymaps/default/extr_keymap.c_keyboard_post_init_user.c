
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int rgblight_sethsv_noeeprom_white () ;

void keyboard_post_init_user(void) {

  rgblight_sethsv_noeeprom_white();
}

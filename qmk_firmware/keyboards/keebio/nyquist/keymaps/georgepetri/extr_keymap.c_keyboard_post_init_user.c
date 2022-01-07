
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HSV_BLUE ;
 int rgblight_sethsv_noeeprom (int ) ;

void keyboard_post_init_user(void) {
  rgblight_sethsv_noeeprom(HSV_BLUE);
}

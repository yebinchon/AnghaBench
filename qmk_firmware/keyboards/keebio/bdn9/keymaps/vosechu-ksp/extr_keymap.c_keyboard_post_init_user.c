
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HSV_SPRINGGREEN ;
 scalar_t__ RGBLIGHT_MODE_BREATHING ;
 int rgblight_enable_noeeprom () ;
 int rgblight_mode_noeeprom (scalar_t__) ;
 int rgblight_sethsv_noeeprom (int ) ;

void keyboard_post_init_user(void) {

    rgblight_enable_noeeprom();
    rgblight_mode_noeeprom(RGBLIGHT_MODE_BREATHING + 1);
    rgblight_sethsv_noeeprom(HSV_SPRINGGREEN);
}

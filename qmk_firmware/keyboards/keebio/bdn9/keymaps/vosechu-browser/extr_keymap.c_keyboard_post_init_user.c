
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RGBLIGHT_MODE_RAINBOW_SWIRL ;
 int rgblight_enable_noeeprom () ;
 int rgblight_mode_noeeprom (int ) ;

void keyboard_post_init_user(void) {

    rgblight_enable_noeeprom();
    rgblight_mode_noeeprom(RGBLIGHT_MODE_RAINBOW_SWIRL);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MODERN_DOLCH_RED ;
 int RGBLIGHT_MODE_RAINBOW_SWIRL ;
 int rgblight_mode (int ) ;
 int rgblight_sethsv (int ) ;

void eeconfig_init_keymap(void) {
    rgblight_sethsv(MODERN_DOLCH_RED);
    rgblight_mode(RGBLIGHT_MODE_RAINBOW_SWIRL);
}

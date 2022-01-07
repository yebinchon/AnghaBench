
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IS_LAYER_ON (int ) ;
 int KC_MS_WH_DOWN ;
 int KC_MS_WH_UP ;
 int KC_VOLD ;
 int KC_VOLU ;
 int _RAISE ;
 int tap_code (int ) ;

void encoder_update(bool clockwise) {
    if (clockwise && !IS_LAYER_ON(_RAISE)) {
        tap_code(KC_MS_WH_DOWN);
    } else if (!clockwise && !IS_LAYER_ON(_RAISE)) {
        tap_code(KC_MS_WH_UP);
    } else if (clockwise && IS_LAYER_ON(_RAISE)) {
        tap_code(KC_VOLU);
    } else if (!clockwise && IS_LAYER_ON(_RAISE)) {
        tap_code(KC_VOLD);
    }
}

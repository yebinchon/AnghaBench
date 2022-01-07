
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 scalar_t__ IS_LAYER_ON (int ) ;
 int KC_BRID ;
 int KC_BRIU ;
 int KC_VOLD ;
 int KC_VOLU ;
 int _FN ;
 int tap_code (int ) ;

void encoder_update_user(uint8_t index, bool clockwise) {
  if (index == 0) {
    if (IS_LAYER_ON(_FN)) {
    if (clockwise) {
            tap_code(KC_BRIU);
    } else {
            tap_code(KC_BRID);
    }
  } else {
    if (clockwise) {
            tap_code(KC_VOLU);

    } else {
            tap_code(KC_VOLD);
      }
    }
  }
}

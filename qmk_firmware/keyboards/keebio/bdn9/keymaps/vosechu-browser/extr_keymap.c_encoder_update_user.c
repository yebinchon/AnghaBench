
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int KC_LBRC ;
 int KC_RBRC ;
 int LGUI (int ) ;
 int LSFT (int ) ;
 int tap_code16 (int ) ;

void encoder_update_user(uint8_t index, bool clockwise) {
  if (index == 0) {
    if (clockwise) {

      tap_code16(LSFT(LGUI(KC_RBRC)));
    } else {

      tap_code16(LSFT(LGUI(KC_LBRC)));
    }
  }
  else if (index == 1) {
    if (clockwise) {

      tap_code16(LGUI(KC_RBRC));
    } else {

      tap_code16(LGUI(KC_LBRC));
    }
  }
}

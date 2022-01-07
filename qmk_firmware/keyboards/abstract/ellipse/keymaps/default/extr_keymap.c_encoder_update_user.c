
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int KC_M ;
 int KC_O ;
 int KC_P ;
 int KC_R ;
 int rgblight_decrease_hue_noeeprom () ;
 int rgblight_increase_hue_noeeprom () ;
 int tap_code (int ) ;

void encoder_update_user(uint8_t index, bool clockwise) {
 if (index == 0) {
  if (clockwise) {
   tap_code(KC_O);
  } else {
   tap_code(KC_P);
  }
 } else if (index == 1) {
  if (clockwise) {
   rgblight_increase_hue_noeeprom();
  } else {
   rgblight_decrease_hue_noeeprom();
  }
 } else if (index == 2) {
  if (clockwise) {
   tap_code(KC_M);
  } else {
   tap_code(KC_R);
  }
 }
}

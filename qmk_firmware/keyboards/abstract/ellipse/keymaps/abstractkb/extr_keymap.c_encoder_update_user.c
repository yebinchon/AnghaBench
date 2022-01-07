
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int KC_VOLD ;
 int KC_VOLU ;
 int backlight_decrease () ;
 int backlight_increase () ;
 int rgblight_decrease_hue_noeeprom () ;
 int rgblight_increase_hue_noeeprom () ;
 int tap_code (int ) ;

void encoder_update_user(uint8_t index, bool clockwise) {
 if (index == 0) {
  if (clockwise) {
   tap_code(KC_VOLU);
  } else {
   tap_code(KC_VOLD);
  }
 } else if (index == 1) {
  if (clockwise) {
   rgblight_increase_hue_noeeprom();
  } else {
   rgblight_decrease_hue_noeeprom();
  }
 } else if (index == 2) {
  if (clockwise) {
   backlight_increase();
  } else {
   backlight_decrease();
  }
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int8_t ;


 int KC_VOLD ;
 int KC_VOLU ;
 int tap_code (int ) ;

void encoder_update_user(int8_t index, bool clockwise) {
  if (index == 0) {
    if (clockwise) {
     tap_code(KC_VOLU);
    } else {
      tap_code(KC_VOLD);
    }
  }
}

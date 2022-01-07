
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int8_t ;


 int C (int ) ;
 int KC_T ;
 int KC_W ;
 int tap_code16 (int ) ;

void encoder_update_user(int8_t index, bool clockwise) {
    if (clockwise) {
      tap_code16(C(KC_T));
    } else {
      tap_code16(C(KC_W));
    }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int8_t ;


 int KC_PGDN ;
 int KC_PGUP ;
 int tap_code (int ) ;

void encoder_update_user(int8_t index, bool clockwise) {
    if (clockwise) {
      tap_code(KC_PGUP);
    } else {
      tap_code(KC_PGDN);
    }
}

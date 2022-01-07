
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int KC_A ;
 int KC_COMM ;
 int KC_D ;
 int KC_DOT ;
 int KC_E ;
 int KC_H ;
 int KC_LCTL ;
 int KC_LSFT ;
 int KC_N ;
 int KC_Q ;
 int KC_VOLD ;
 int KC_VOLU ;
 int LALT (int ) ;
 int base_mode ;
 int flight_mode ;
 int rcs_mode ;
 int tap_code (int ) ;
 int tap_code16 (int ) ;

void encoder_update_user(uint8_t index, bool clockwise) {
    if(base_mode == 1) {
        if (index == 0) {
            if (clockwise) {

                tap_code(KC_VOLU);
            } else {

                tap_code(KC_VOLD);
            }
        }
        else if (index == 1) {
            if (clockwise) {

                tap_code(KC_DOT);
            } else {

                tap_code(KC_COMM);
            }
        }
    }

    if(rcs_mode == 1) {
        if (index == 0) {
            if (clockwise) {

                tap_code(KC_H);
            } else {

                tap_code(KC_N);
            }
        }
        else if (index == 1) {
            if (clockwise) {

                tap_code(KC_Q);
            } else {

                tap_code(KC_E);
            }
        }
    }

    if(flight_mode == 1) {
        if (index == 0) {
            if (clockwise) {

                tap_code(KC_LSFT);
            } else {

                tap_code(KC_LCTL);
            }
        }
        else if (index == 1) {
            if (clockwise) {

                tap_code16(LALT(KC_A));
            } else {

                tap_code16(LALT(KC_D));
            }
        }
    }
}

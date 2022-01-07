
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int KC_MS_WH_DOWN ;
 int KC_MS_WH_UP ;
 int KC_VOLD ;
 int KC_VOLU ;
 int tap_code (int ) ;

void encoder_update_user(uint8_t index, bool clockwise) {
    if (clockwise == 0) {



        tap_code(KC_VOLD);

    } else {



        tap_code(KC_VOLU);

    }
  }

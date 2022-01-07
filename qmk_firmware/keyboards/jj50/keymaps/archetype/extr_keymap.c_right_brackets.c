
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int count; int pressed; } ;
typedef TYPE_1__ qk_tap_dance_state_t ;


 int KC_LALT ;
 int KC_RBRC ;
 int KC_RCBR ;
 int KC_RPRN ;
 int register_code (int ) ;
 int register_code16 (int ) ;

void right_brackets(qk_tap_dance_state_t *state, void *user_data) {
    if (state->count == 1) {
      if (!state->pressed) {
        register_code16(KC_RPRN);
      } else {
        register_code(KC_LALT);
      }
    } else if (state->count == 2) {
        register_code16(KC_RBRC);
    } else if (state->count == 3) {
        register_code16(KC_RCBR);
    }
}

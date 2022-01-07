
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int count; int pressed; } ;
typedef TYPE_1__ qk_tap_dance_state_t ;


 int KC_9 ;
 int KC_LBRC ;
 int KC_LSFT ;
 int register_code (int ) ;

void left_brackets(qk_tap_dance_state_t *state, void *user_data) {
  if (state->count == 1) {
    if (!state->pressed) {
      register_code(KC_LSFT);
      register_code(KC_9);
    } else {
      register_code(KC_LSFT);
    }
  } else if (state->count == 2) {
    register_code(KC_LBRC);
  }
}

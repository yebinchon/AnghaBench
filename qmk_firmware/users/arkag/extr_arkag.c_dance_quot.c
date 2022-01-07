
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int count; } ;
typedef TYPE_1__ qk_tap_dance_state_t ;


 int KC_QUOT ;
 int KC_QUOTE ;
 int KC_SPACE ;
 scalar_t__ aesthetic ;
 int surround_type (int,int ,int) ;
 int tap_code (int ) ;

void dance_quot (qk_tap_dance_state_t *state, void *user_data) {
  if (state->count == 1) {
    tap_code(KC_QUOT);
    if (aesthetic) {
      tap_code(KC_SPACE);
    }
  } else if (state->count == 2) {
    surround_type(2, KC_QUOTE, 0);
  } else if (state->count == 3) {
    surround_type(2, KC_QUOTE, 1);
  }
}

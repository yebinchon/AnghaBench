
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int count; } ;
typedef TYPE_1__ qk_tap_dance_state_t ;


 int KC_GRAVE ;
 int KC_GRV ;
 int KC_SPACE ;
 scalar_t__ aesthetic ;
 int surround_type (int,int ,int) ;
 int tap_code (int ) ;

void dance_grv (qk_tap_dance_state_t *state, void *user_data) {
  if (state->count == 1) {
    tap_code(KC_GRV);
    if (aesthetic) {
      tap_code(KC_SPACE);
    }
  } else if (state->count == 2) {
    surround_type(2, KC_GRAVE, 0);
  } else {
    surround_type(6, KC_GRAVE, 0);
  }
}

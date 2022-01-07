
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int count; } ;
typedef TYPE_1__ qk_tap_dance_state_t ;


 int KC_LALT ;
 int KC_LCTL ;
 int KC_RSFT ;
 int register_code (int ) ;

void shift_ctrlalt_down (qk_tap_dance_state_t *state, void *user_data) {
  if (state->count >= 4) {
    register_code (KC_LCTL);
    register_code (KC_LALT);
  } else if (state->count == 3) {
    register_code (KC_LALT);
  } else if (state->count == 2) {
    register_code (KC_LCTL);
  } else {
    register_code (KC_RSFT);
  }
}

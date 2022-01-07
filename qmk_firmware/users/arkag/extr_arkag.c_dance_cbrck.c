
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int count; } ;
typedef TYPE_1__ qk_tap_dance_state_t ;


 int KC_0 ;
 int KC_LSFT ;
 int KC_RBRC ;
 int KC_SPACE ;
 scalar_t__ aesthetic ;
 int register_code (int ) ;
 int tap_code (int ) ;
 int unregister_code (int ) ;

void dance_cbrck (qk_tap_dance_state_t *state, void *user_data) {
  if (state->count == 1) {
    tap_code(KC_RBRC);
    if (aesthetic) {
      tap_code(KC_SPACE);
    }
  } else if (state->count == 2) {
    register_code(KC_LSFT);
    tap_code(KC_0);
    if (aesthetic) {
      tap_code(KC_SPACE);
    }
    unregister_code(KC_LSFT);
  }
}

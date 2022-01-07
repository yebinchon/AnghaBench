
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int count; } ;
typedef TYPE_1__ qk_tap_dance_state_t ;


 int KC_A ;
 int KC_LALT ;
 int KC_LCTL ;
 int KC_SPC ;
 int register_code (int ) ;
 int unregister_code (int ) ;

__attribute__((used)) static void ang_tap_dance_tmux_finished (qk_tap_dance_state_t *state, void *user_data) {
  if (state->count == 1) {
    register_code(KC_LALT);
    register_code(KC_SPC);
    unregister_code(KC_SPC);
    unregister_code(KC_LALT);
  } else {
    register_code(KC_LCTL);
    register_code(KC_A);
    unregister_code(KC_A);
    unregister_code(KC_LCTL);
  }
}

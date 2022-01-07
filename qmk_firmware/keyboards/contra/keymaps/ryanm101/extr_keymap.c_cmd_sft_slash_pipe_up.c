
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int count; } ;
typedef TYPE_1__ qk_tap_dance_state_t ;
struct TYPE_5__ {int mods; } ;


 int KC_LSFT ;
 int KC_NONUS_BSLASH ;
 int MOD_BIT (int ) ;
 TYPE_2__* keyboard_report ;
 int unregister_code (int ) ;
 int unregister_mods (int) ;

void cmd_sft_slash_pipe_up (qk_tap_dance_state_t *state, void *user_data) {
  if (state->count == 1) {
    if (keyboard_report->mods & MOD_BIT(KC_LSFT)) {
      unregister_code (KC_LSFT);
    } else {
      unregister_code (KC_NONUS_BSLASH);
    }
  } else if (state->count == 2) {
    unregister_mods(MOD_BIT(KC_LSFT));
    unregister_code(KC_NONUS_BSLASH);
  }
}

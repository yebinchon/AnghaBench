
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int count; } ;
typedef TYPE_1__ qk_tap_dance_state_t ;


 int KC_5 ;
 int KC_B ;
 int KC_ENT ;
 int KC_LCTRL ;
 int KC_LSHIFT ;
 int MOD_BIT (int ) ;
 int SEND_STRING (char*) ;
 int register_code (int ) ;
 int register_mods (int ) ;
 int unregister_code (int ) ;
 int unregister_mods (int ) ;

void tmux_dance (qk_tap_dance_state_t *state, void *user_data) {
  if (state->count == 1) {
    SEND_STRING("tmux"); register_code(KC_ENT); unregister_code(KC_ENT);
  } else if (state->count == 2) {
    register_mods(MOD_BIT(KC_LCTRL));
    register_code(KC_B); unregister_code(KC_B);
    unregister_mods(MOD_BIT(KC_LCTRL));
    register_mods(MOD_BIT(KC_LSHIFT));
    register_code(KC_5); unregister_code(KC_5);
    unregister_mods(MOD_BIT(KC_LSHIFT));
  }
}

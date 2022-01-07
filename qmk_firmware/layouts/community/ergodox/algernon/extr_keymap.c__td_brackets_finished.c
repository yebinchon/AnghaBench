
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int count; scalar_t__ keycode; } ;
typedef TYPE_1__ qk_tap_dance_state_t ;


 int CT_LBP ;
 int KC_LBRC ;
 int KC_LPRN ;
 int KC_RBRC ;
 int KC_RPRN ;
 scalar_t__ TD (int ) ;
 int register_code16 (int ) ;
 int register_hex (int) ;
 int unicode_input_finish () ;
 int unicode_input_start () ;

__attribute__((used)) static void
_td_brackets_finished (qk_tap_dance_state_t *state, void *user_data) {
  if (state->count == 1) {
    if (state->keycode == TD(CT_LBP))
      register_code16 (KC_LBRC);
    else
      register_code16 (KC_RBRC);
  } else if (state->count == 2) {
    if (state->keycode == TD(CT_LBP))
      register_code16 (KC_LPRN);
    else
      register_code16 (KC_RPRN);
  } else if (state->count == 3) {
    unicode_input_start();

    if (state->keycode == TD(CT_LBP))
      register_hex (0x300c);
    else
      register_hex (0x300d);

    unicode_input_finish();
  }
}

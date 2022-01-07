
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int count; } ;
typedef TYPE_1__ qk_tap_dance_state_t ;


 int KC_LBRC ;
 int KC_LCBR ;
 int KC_LCTL ;
 int KC_LPRN ;
 int unregister_code (int ) ;
 int unregister_code16 (int ) ;

void left_brackets_reset(qk_tap_dance_state_t *state, void *user_data) {
    if (state->count == 1) {
        unregister_code16(KC_LPRN);
    } else if (state->count == 2) {
        unregister_code16(KC_LBRC);
    } else if (state->count == 3) {
        unregister_code16(KC_LCBR);
    }

    unregister_code(KC_LCTL);
}

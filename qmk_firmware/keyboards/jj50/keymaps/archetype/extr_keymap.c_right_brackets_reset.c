
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int count; } ;
typedef TYPE_1__ qk_tap_dance_state_t ;


 int KC_LALT ;
 int KC_RBRC ;
 int KC_RCBR ;
 int KC_RPRN ;
 int unregister_code (int ) ;
 int unregister_code16 (int ) ;

void right_brackets_reset(qk_tap_dance_state_t *state, void *user_data) {
    if (state->count == 1) {
        unregister_code16(KC_RPRN);
    } else if (state->count == 2) {
        unregister_code16(KC_RBRC);
    } else if (state->count == 3) {
        unregister_code16(KC_RCBR);
    }

    unregister_code(KC_LALT);
}

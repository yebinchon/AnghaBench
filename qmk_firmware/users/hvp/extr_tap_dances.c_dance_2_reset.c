
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int count; } ;
typedef TYPE_1__ qk_tap_dance_state_t ;


 int KC_A ;
 int KC_QUOT ;
 int KC_RALT ;
 int unregister_code (int ) ;

void dance_2_reset(qk_tap_dance_state_t *state, void *user_data) {
    if (state->count == 2) {
        unregister_code(KC_QUOT);
    } else {
        unregister_code(KC_RALT);
        unregister_code(KC_A);
    }
}

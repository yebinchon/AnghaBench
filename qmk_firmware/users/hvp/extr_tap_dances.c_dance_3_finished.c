
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int count; } ;
typedef TYPE_1__ qk_tap_dance_state_t ;


 int KC_RALT ;
 int KC_SLSH ;
 int KC_W ;
 int register_code (int ) ;
 int tap_code (int ) ;
 int unregister_code (int ) ;

void dance_3_finished(qk_tap_dance_state_t *state, void *user_data) {

    if (state->count == 2) {
        tap_code(KC_SLSH);
    } else {
        register_code(KC_RALT);
        register_code(KC_W);
        unregister_code(KC_RALT);
        unregister_code(KC_W);
    }
}

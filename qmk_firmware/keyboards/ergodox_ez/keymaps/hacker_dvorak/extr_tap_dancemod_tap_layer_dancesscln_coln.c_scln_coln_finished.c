
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int qk_tap_dance_state_t ;
struct TYPE_2__ {int state; } ;



 int KC_COLN ;
 int KC_LALT ;
 int KC_LGUI ;
 int KC_LSFT ;
 int KC_SCLN ;


 int current_dance (int *) ;
 int register_code (int ) ;
 int register_code16 (int ) ;
 TYPE_1__ scln_coln_state ;

void scln_coln_finished(qk_tap_dance_state_t *state, void *user_data) {
    scln_coln_state.state = current_dance(state);
    switch (scln_coln_state.state) {
        case 128:
            register_code(KC_SCLN);
            break;

        case 129:
            register_code(KC_LALT);
            register_code(KC_LSFT);
            register_code(KC_LGUI);
            break;

        case 130:
            register_code16(KC_COLN);
            break;
    }
}

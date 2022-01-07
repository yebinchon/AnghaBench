
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int qk_tap_dance_state_t ;
struct TYPE_2__ {int state; } ;



 int KC_DQUO ;
 int KC_LALT ;
 int KC_LCTL ;
 int KC_QUOT ;


 int current_dance (int *) ;
 TYPE_1__ quot_dquot_state ;
 int register_code (int ) ;
 int register_code16 (int ) ;

void quot_dquot_finished(qk_tap_dance_state_t *state, void *user_data) {
    quot_dquot_state.state = current_dance(state);
    switch (quot_dquot_state.state) {
        case 128:
            register_code(KC_QUOT);
            break;

        case 129:
            register_code(KC_LCTL);
            register_code(KC_LALT);
            break;

        case 130:
            register_code16(KC_DQUO);
            break;
    }
}

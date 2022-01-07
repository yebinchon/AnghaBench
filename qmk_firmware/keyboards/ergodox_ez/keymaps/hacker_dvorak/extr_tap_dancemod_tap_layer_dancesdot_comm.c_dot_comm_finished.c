
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int qk_tap_dance_state_t ;
struct TYPE_2__ {int state; } ;



 int KC_COMM ;
 int KC_DOT ;
 int KC_LCTL ;
 int KC_LSFT ;


 int current_dance (int *) ;
 TYPE_1__ dot_comm_state ;
 int register_code (int ) ;

void dot_comm_finished(qk_tap_dance_state_t *state, void *user_data) {
    dot_comm_state.state = current_dance(state);
    switch (dot_comm_state.state) {
        case 128:
            register_code(KC_DOT);
            break;

        case 129:
            register_code(KC_LCTL);
            register_code(KC_LSFT);
            break;

        case 130:
            register_code(KC_COMM);
            break;
    }
}

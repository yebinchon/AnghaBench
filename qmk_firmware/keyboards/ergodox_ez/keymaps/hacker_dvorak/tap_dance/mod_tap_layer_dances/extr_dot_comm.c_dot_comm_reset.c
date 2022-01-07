
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


 TYPE_1__ dot_comm_state ;
 int unregister_code (int ) ;

void dot_comm_reset(qk_tap_dance_state_t *state, void *user_data) {
    switch (dot_comm_state.state) {
        case 128:
            unregister_code(KC_DOT);
            break;

        case 129:
            unregister_code(KC_LCTL);
            unregister_code(KC_LSFT);
            break;

        case 130:
            unregister_code(KC_COMM);
            break;
    }
    dot_comm_state.state = 0;
}

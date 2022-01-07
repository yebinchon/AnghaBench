
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int qk_tap_dance_state_t ;
struct TYPE_2__ {int state; } ;



 int KC_LALT ;
 int KC_LSFT ;
 int KC_NO ;


 int current_dance (int *) ;
 TYPE_1__ none_lead_state ;
 int qk_leader_start () ;
 int register_code (int ) ;

void none_lead_finished(qk_tap_dance_state_t *state, void *user_data) {
    none_lead_state.state = current_dance(state);
    switch (none_lead_state.state) {
        case 128:
            register_code(KC_NO);
            break;

        case 129:
            register_code(KC_LALT);
            register_code(KC_LSFT);
            break;

        case 130:
            qk_leader_start();
            break;
    }
}


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


 TYPE_1__ none_lead_state ;
 int unregister_code (int ) ;

void none_lead_reset(qk_tap_dance_state_t *state, void *user_data) {
    switch (none_lead_state.state) {
        case 128:
            unregister_code(KC_NO);
            break;

        case 129:
            unregister_code(KC_LALT);
            unregister_code(KC_LSFT);
            break;

        case 130:
            break;
    }
    none_lead_state.state = 0;
}

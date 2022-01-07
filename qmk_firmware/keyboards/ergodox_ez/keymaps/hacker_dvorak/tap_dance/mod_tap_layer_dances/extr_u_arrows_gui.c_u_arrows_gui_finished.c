
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int qk_tap_dance_state_t ;
struct TYPE_2__ {int state; } ;


 int ARROWS ;

 int KC_LGUI ;
 int KC_U ;


 int current_dance (int *) ;
 int layer_on (int ) ;
 int register_code (int ) ;
 TYPE_1__ u_arrows_gui_state ;

void u_arrows_gui_finished(qk_tap_dance_state_t *state, void *user_data) {
    u_arrows_gui_state.state = current_dance(state);
    switch (u_arrows_gui_state.state) {
        case 128:
            register_code(KC_U);
            break;

        case 129:
            layer_on(ARROWS);
            break;

        case 130:
            register_code(KC_LGUI);
            break;
    }
}

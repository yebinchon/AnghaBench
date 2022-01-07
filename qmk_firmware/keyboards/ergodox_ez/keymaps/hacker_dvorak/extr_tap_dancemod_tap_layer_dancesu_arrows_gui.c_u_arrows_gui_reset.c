
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


 int layer_off (int ) ;
 TYPE_1__ u_arrows_gui_state ;
 int unregister_code (int ) ;

void u_arrows_gui_reset(qk_tap_dance_state_t *state, void *user_data) {
    switch (u_arrows_gui_state.state) {
        case 128:
            unregister_code(KC_U);
            break;

        case 129:
            layer_off(ARROWS);
            break;

        case 130:
            unregister_code(KC_LGUI);
            break;
    }
    u_arrows_gui_state.state = 0;
}

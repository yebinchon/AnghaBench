
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int qk_tap_dance_state_t ;
struct TYPE_2__ {int state; } ;



 int KC_H ;
 int KC_LGUI ;
 int MOUSE ;


 TYPE_1__ h_mouse_gui_state ;
 int layer_off (int ) ;
 int unregister_code (int ) ;

void h_mouse_gui_reset(qk_tap_dance_state_t *state, void *user_data) {
    switch (h_mouse_gui_state.state) {
        case 128:
            unregister_code(KC_H);
            break;

        case 129:
            layer_off(MOUSE);
            break;

        case 130:
            unregister_code(KC_LGUI);
            break;
    }
    h_mouse_gui_state.state = 0;
}

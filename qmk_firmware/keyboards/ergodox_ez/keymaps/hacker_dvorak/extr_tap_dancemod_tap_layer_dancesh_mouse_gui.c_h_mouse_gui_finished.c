
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


 int current_dance (int *) ;
 TYPE_1__ h_mouse_gui_state ;
 int layer_on (int ) ;
 int register_code (int ) ;

void h_mouse_gui_finished(qk_tap_dance_state_t *state, void *user_data) {
    h_mouse_gui_state.state = current_dance(state);
    switch (h_mouse_gui_state.state) {
        case 128:
            register_code(KC_H);
            break;

        case 129:
            layer_on(MOUSE);
            break;

        case 130:
            register_code(KC_LGUI);
            break;
    }
}

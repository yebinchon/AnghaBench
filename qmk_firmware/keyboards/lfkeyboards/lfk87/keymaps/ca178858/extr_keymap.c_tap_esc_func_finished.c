
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ pressed; } ;
typedef TYPE_1__ qk_tap_dance_state_t ;


 int FUNC ;
 int KC_ESC ;
 int layer_on (int ) ;
 int register_code (int ) ;
 int unregister_code (int ) ;

void tap_esc_func_finished(qk_tap_dance_state_t *state, void *user_data) {
    if(state->pressed){
        layer_on(FUNC);
    }else{
        register_code(KC_ESC);
        unregister_code(KC_ESC);
    }
}

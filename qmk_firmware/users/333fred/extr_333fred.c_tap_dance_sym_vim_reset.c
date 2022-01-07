
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qk_tap_dance_state_t ;



 int ONESHOT_PRESSED ;


 int SYMB ;
 int VIM ;
 int clear_oneshot_layer_state (int ) ;
 int layer_off (int ) ;
 int tap_dance_state ;

void tap_dance_sym_vim_reset(qk_tap_dance_state_t *state, void *user_data) {
    switch(tap_dance_state) {
        case 128:
            clear_oneshot_layer_state(ONESHOT_PRESSED);
            break;
        case 129:
            layer_off(SYMB);
            break;
        case 130:
            layer_off(VIM);
            break;
    }
}

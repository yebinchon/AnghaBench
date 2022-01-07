
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int count; scalar_t__ pressed; scalar_t__ interrupted; } ;
typedef TYPE_1__ qk_tap_dance_state_t ;



 int ONESHOT_START ;


 int SYMB ;
 int VIM ;
 int layer_on (int ) ;
 int reset_oneshot_layer () ;
 int set_oneshot_layer (int ,int ) ;
 int tap_dance_active ;
 int tap_dance_state ;

void tap_dance_sym_vim_finished(qk_tap_dance_state_t *state, void *user_data) {

    if (state->count == 1) {
        if (state->interrupted || state->pressed == 0) tap_dance_state = 128;
        else tap_dance_state = 129;
    } else {

        tap_dance_state = 130;
    }

    switch (tap_dance_state) {
        case 128:
            if (tap_dance_active) {
                reset_oneshot_layer();
                tap_dance_active = 0;
            } else {
                set_oneshot_layer(SYMB, ONESHOT_START);
                tap_dance_active = 1;
            }
            break;
        case 129:
            layer_on(SYMB);
            break;
        case 130:
            layer_on(VIM);
            break;
    }
}

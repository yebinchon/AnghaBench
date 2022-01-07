
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int count; size_t keycode; } ;
typedef TYPE_1__ qk_tap_dance_state_t ;


 int MOD_BIT (int ) ;
 size_t QK_TAP_DANCE ;
 int _L1 ;
 int _L2 ;
 int layer_off (int ) ;
 int layer_on (int ) ;
 int register_mods (int ) ;
 int reset_tap_dance (TYPE_1__*) ;
 int send_keyboard_report () ;
 int * tap_dance_keys ;

void mod_tap_fn(qk_tap_dance_state_t *state, void *user_data) {
    switch (state->count) {
        case 1:
            register_mods(MOD_BIT(tap_dance_keys[state->keycode - QK_TAP_DANCE]));
            send_keyboard_report();
            break;
        case 2:
            layer_on(_L2);
            break;
        case 3:
            layer_off(_L2);
            layer_on(_L1);
            break;
        default:
            reset_tap_dance(state);
    }
}

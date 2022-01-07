
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t keycode; } ;
typedef TYPE_1__ qk_tap_dance_state_t ;


 int MOD_BIT (int ) ;
 size_t QK_TAP_DANCE ;
 int _L1 ;
 int _L2 ;
 int layer_off (int ) ;
 int send_keyboard_report () ;
 int * tap_dance_keys ;
 int unregister_mods (int ) ;

void mod_reset_fn(qk_tap_dance_state_t *state, void *user_data) {
    layer_off(_L1);
    layer_off(_L2);
    unregister_mods(MOD_BIT(tap_dance_keys[state->keycode - QK_TAP_DANCE]));
    send_keyboard_report();
}

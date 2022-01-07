
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int count; int weak_mods; } ;
typedef TYPE_1__ qk_tap_dance_state_t ;
struct TYPE_5__ {int kc2; int kc1; } ;
typedef TYPE_2__ qk_tap_dance_pair_t ;


 int MOD_BIT (int ) ;
 int register_code (int ) ;
 int unregister_code (int ) ;

void td_double_mod_each(qk_tap_dance_state_t *state, void *user_data) {
    qk_tap_dance_pair_t *data = (qk_tap_dance_pair_t *)user_data;


    if (state->count == 1 || state->count == 3) {
        register_code(data->kc1);
    } else if (state->count == 2) {
        unregister_code(data->kc1);
        register_code(data->kc2);
    }

    state->weak_mods &= ~(MOD_BIT(data->kc1) | MOD_BIT(data->kc2));
}

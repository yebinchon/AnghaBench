
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int count; } ;
typedef TYPE_1__ qk_tap_dance_state_t ;
struct TYPE_5__ {int kc2; int kc1; } ;
typedef TYPE_2__ qk_tap_dance_pair_t ;


 int unregister_code (int ) ;

void td_double_mod_reset(qk_tap_dance_state_t *state, void *user_data) {
    qk_tap_dance_pair_t *data = (qk_tap_dance_pair_t *)user_data;

    if (state->count == 1 || state->count >= 3) {
        unregister_code(data->kc1);
    }
    if (state->count >= 2) {
        unregister_code(data->kc2);
    }
}

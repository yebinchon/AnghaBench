
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int count; } ;
typedef TYPE_1__ qk_tap_dance_state_t ;
struct TYPE_5__ {int layer; int kc; } ;
typedef TYPE_2__ qk_tap_dance_dual_role_t ;


 int layer_off (int ) ;
 int unregister_code (int ) ;

void td_mod_layer_reset(qk_tap_dance_state_t *state, void *user_data) {
    qk_tap_dance_dual_role_t *data = (qk_tap_dance_dual_role_t *)user_data;

    if (state->count == 1 || state->count >= 3) {
        unregister_code(data->kc);
    }
    if (state->count >= 2) {
        layer_off(data->layer);
    }
}

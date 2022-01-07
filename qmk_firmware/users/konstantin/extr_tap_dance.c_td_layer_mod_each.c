
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int count; } ;
typedef TYPE_1__ qk_tap_dance_state_t ;
struct TYPE_5__ {int started; int kc; int layer; int layer_on; } ;
typedef TYPE_2__ qk_tap_dance_layer_mod_t ;


 int IS_LAYER_ON (int ) ;
 int layer_off (int ) ;
 int layer_on (int ) ;
 int register_code (int ) ;

void td_layer_mod_each(qk_tap_dance_state_t *state, void *user_data) {
    qk_tap_dance_layer_mod_t *data = (qk_tap_dance_layer_mod_t *)user_data;
    if (!data->started) {
        data->layer_on = IS_LAYER_ON(data->layer);
        data->started = 1;
    }


    if (state->count == 1 || state->count == 3) {
        layer_on(data->layer);
    } else if (state->count == 2) {
        if (!data->layer_on) {
            layer_off(data->layer);
        }
        register_code(data->kc);
    }
}

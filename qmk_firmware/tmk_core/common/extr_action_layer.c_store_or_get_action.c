
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int keypos_t ;
typedef int action_t ;


 int action_for_key (int ,int ) ;
 scalar_t__ disable_action_cache ;
 int layer_switch_get_action (int ) ;
 int layer_switch_get_layer (int ) ;
 int read_source_layers_cache (int ) ;
 int update_source_layers_cache (int ,int ) ;

action_t store_or_get_action(bool pressed, keypos_t key) {

    if (disable_action_cache) {
        return layer_switch_get_action(key);
    }

    uint8_t layer;

    if (pressed) {
        layer = layer_switch_get_layer(key);
        update_source_layers_cache(key, layer);
    } else {
        layer = read_source_layers_cache(key);
    }
    return action_for_key(layer, key);



}

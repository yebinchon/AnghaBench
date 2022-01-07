
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_3__ {int key; scalar_t__ pressed; } ;
typedef TYPE_1__ keyevent_t ;


 int disable_action_cache ;
 int keymap_key_to_keycode (int ,int ) ;
 int layer_switch_get_layer (int ) ;
 int read_source_layers_cache (int ) ;
 int update_source_layers_cache (int ,int ) ;

uint16_t get_event_keycode(keyevent_t event) {


    if (!disable_action_cache) {
        uint8_t layer;

        if (event.pressed) {
            layer = layer_switch_get_layer(event.key);
            update_source_layers_cache(event.key, layer);
        } else {
            layer = read_source_layers_cache(event.key);
        }
        return keymap_key_to_keycode(layer, event.key);
    } else

        return keymap_key_to_keycode(layer_switch_get_layer(event.key), event.key);
}

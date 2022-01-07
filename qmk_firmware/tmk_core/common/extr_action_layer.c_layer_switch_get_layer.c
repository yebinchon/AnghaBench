
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned long uint8_t ;
typedef unsigned long layer_state_t ;
typedef int keypos_t ;
typedef unsigned long int8_t ;
struct TYPE_3__ {scalar_t__ code; } ;
typedef TYPE_1__ action_t ;


 scalar_t__ ACTION_TRANSPARENT ;
 TYPE_1__ action_for_key (unsigned long,int ) ;
 unsigned long default_layer_state ;
 unsigned long get_highest_layer (unsigned long) ;
 unsigned long layer_state ;

uint8_t layer_switch_get_layer(keypos_t key) {

    action_t action;
    action.code = ACTION_TRANSPARENT;

    layer_state_t layers = layer_state | default_layer_state;

    for (int8_t i = sizeof(layer_state_t) * 8 - 1; i >= 0; i--) {
        if (layers & (1UL << i)) {
            action = action_for_key(i, key);
            if (action.code != ACTION_TRANSPARENT) {
                return i;
            }
        }
    }

    return 0;



}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int keypos_t ;
typedef int action_t ;


 int action_for_key (int ,int ) ;
 int layer_switch_get_layer (int ) ;

action_t layer_switch_get_action(keypos_t key) { return action_for_key(layer_switch_get_layer(key), key); }

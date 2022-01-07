
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int layer_state_t ;


 int default_layer_state_set_user (int ) ;

__attribute__((weak)) layer_state_t default_layer_state_set_kb(layer_state_t state) { return default_layer_state_set_user(state); }

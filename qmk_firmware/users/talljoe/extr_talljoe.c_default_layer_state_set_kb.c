
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int eeconfig_update_default_layer (int ) ;

uint32_t default_layer_state_set_kb(uint32_t state) {

  eeconfig_update_default_layer(state);
  return state;
}

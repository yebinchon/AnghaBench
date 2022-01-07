
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int LR_KBCTL ;
 int LR_SYMBOL ;
 int LR_SYSCTL ;
 int layer_state_set_user_local (int ) ;
 int update_tri_layer_state (int ,int ,int ,int ) ;

uint32_t layer_state_set_user(uint32_t state) {
  uint32_t intermediate_state = update_tri_layer_state(state, LR_SYMBOL, LR_SYSCTL, LR_KBCTL);
  intermediate_state = layer_state_set_user_local(intermediate_state);
  return intermediate_state;
}

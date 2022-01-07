
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int default_layer_state_set_keymap (int ) ;
 int default_layer_state_set_rgb (int ) ;

uint32_t default_layer_state_set_user(uint32_t state) {
  state = default_layer_state_set_keymap(state);





  return state;
}

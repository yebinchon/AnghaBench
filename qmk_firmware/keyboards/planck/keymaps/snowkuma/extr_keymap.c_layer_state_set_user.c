
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int _FUNCTION ;
 int _MOUSE ;
 int _REGEX ;
 int _SYMBOL ;
 int _THUMB ;
 int update_tri_layer_state (int ,int ,int ,int ) ;

uint32_t layer_state_set_user(uint32_t state) {
  state = update_tri_layer_state(state, _SYMBOL, _THUMB, _FUNCTION);
  state = update_tri_layer_state(state, _SYMBOL, _REGEX, _MOUSE);
  return state;
}

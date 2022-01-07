
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int layer_state_t ;




 int _GAMING_EXT ;
 int _NAV ;
 int _NUM ;
 int _UTIL ;
 int default_layer_state ;
 int get_highest_layer (int ) ;
 int update_tri_layer_state (int ,int ,int ,int ) ;

layer_state_t layer_state_set_user(layer_state_t state) {
  switch (get_highest_layer(default_layer_state)) {
    case 129:
      state = update_tri_layer_state(state, _NUM, _NAV, _UTIL);
      break;
    case 128:
      state = update_tri_layer_state(state, _GAMING_EXT, _NAV, _UTIL);
      break;
  }
  return state;
}

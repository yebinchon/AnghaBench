
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int _ALTER_LAYER ;

 int _COLEMA_LOWER_LAYER ;

 int _DVORAK_LOWER_LAYER ;

 int _QWERTY_LOWER_LAYER ;

 int _QWERTZ_LOWER_LAYER ;
 int _RAISE_LAYER ;
 int biton32 (int ) ;
 int layer_move (int const) ;
 int update_tri_layer_state (int ,int ,int ,int ) ;

uint32_t default_layer_state_set_kb(uint32_t state) {
 switch (biton32(state)) {
  case 129:
   state = update_tri_layer_state(state, _RAISE_LAYER, _QWERTZ_LOWER_LAYER, _ALTER_LAYER);
   state = update_tri_layer_state(state, _RAISE_LAYER, _COLEMA_LOWER_LAYER, _ALTER_LAYER);
   state = update_tri_layer_state(state, _RAISE_LAYER, _DVORAK_LOWER_LAYER, _ALTER_LAYER);
   layer_move(129);
   break;
  case 128:
   state = update_tri_layer_state(state, _RAISE_LAYER, _QWERTY_LOWER_LAYER, _ALTER_LAYER);
   state = update_tri_layer_state(state, _RAISE_LAYER, _COLEMA_LOWER_LAYER, _ALTER_LAYER);
   state = update_tri_layer_state(state, _RAISE_LAYER, _DVORAK_LOWER_LAYER, _ALTER_LAYER);
   layer_move(128);
   break;
  case 131:
   state = update_tri_layer_state(state, _RAISE_LAYER, _QWERTY_LOWER_LAYER, _ALTER_LAYER);
   state = update_tri_layer_state(state, _RAISE_LAYER, _QWERTZ_LOWER_LAYER, _ALTER_LAYER);
   state = update_tri_layer_state(state, _RAISE_LAYER, _DVORAK_LOWER_LAYER, _ALTER_LAYER);
   layer_move(131);
   break;
  case 130:
   state = update_tri_layer_state(state, _RAISE_LAYER, _QWERTY_LOWER_LAYER, _ALTER_LAYER);
   state = update_tri_layer_state(state, _RAISE_LAYER, _QWERTZ_LOWER_LAYER, _ALTER_LAYER);
   state = update_tri_layer_state(state, _RAISE_LAYER, _COLEMA_LOWER_LAYER, _ALTER_LAYER);
   layer_move(130);
   break;
 }
 return state;
}

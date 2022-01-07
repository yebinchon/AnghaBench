
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
 int default_layer_state ;
 int update_tri_layer_state (int ,int ,int ,int ) ;

uint32_t layer_state_set_user(uint32_t state) {
 switch (biton32(default_layer_state)) {
  case 129:
   state = update_tri_layer_state(state, _RAISE_LAYER, _QWERTY_LOWER_LAYER, _ALTER_LAYER);
   break;
  case 128:
   state = update_tri_layer_state(state, _RAISE_LAYER, _QWERTZ_LOWER_LAYER, _ALTER_LAYER);
   break;
  case 131:
   state = update_tri_layer_state(state, _RAISE_LAYER, _COLEMA_LOWER_LAYER, _ALTER_LAYER);
   break;
  case 130:
   state = update_tri_layer_state(state, _RAISE_LAYER, _DVORAK_LOWER_LAYER, _ALTER_LAYER);
   break;
 }
 return state;
}

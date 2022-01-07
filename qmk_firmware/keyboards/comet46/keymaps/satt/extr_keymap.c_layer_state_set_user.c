
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int _ADJUST ;
 int const _LOWER ;


 int const _RAISE ;
 int biton32 (int ) ;
 int update_tri_layer_state (int ,int const,int const,int ) ;

uint32_t layer_state_set_user(uint32_t state) {
  switch (biton32(state)) {
    case 129:
    case 128:
      return update_tri_layer_state(state, 128, 129, _ADJUST);
      break;
    default:
      return update_tri_layer_state(state, _RAISE, _LOWER, _ADJUST);
      break;
  }
}

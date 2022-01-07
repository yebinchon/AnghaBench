
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;



 int biton32 (int ) ;
 int clear_mods () ;
 int combo_disable () ;
 int combo_enable () ;
 int layer_state_set_rgb (int ) ;

uint32_t layer_state_set_user(uint32_t state) {



  uint8_t layer = biton32(state);
  combo_enable();
  switch (layer) {
    case 0:
      break;
    case 1:
      clear_mods();
      break;
    case 2:
      clear_mods();
      break;
    case 128:
      clear_mods();
      combo_disable();



      break;
    default:
      break;
  }
  return state;
}

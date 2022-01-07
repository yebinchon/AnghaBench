
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int layer_state_t ;


 int LAYER_INDICATOR_LED_0 ;
 int LAYER_INDICATOR_LED_1 ;
 int biton32 (int ) ;
 int layer_state_set_user (int ) ;
 int writePin (int ,int) ;

layer_state_t layer_state_set_kb(layer_state_t state) {

  uint8_t layer = biton32(state);
  writePin(LAYER_INDICATOR_LED_0, layer & 0b1);
  writePin(LAYER_INDICATOR_LED_1, (layer >> 1) & 0b1);
  return layer_state_set_user(state);
}

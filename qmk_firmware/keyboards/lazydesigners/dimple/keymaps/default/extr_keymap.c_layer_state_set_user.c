
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int HSV_GOLD ;
 int HSV_GREEN ;
 int HSV_RED ;
 int HSV_WHITE ;



 int biton32 (int ) ;
 int rgblight_sethsv_noeeprom (int ) ;
 int update_tri_layer_state (int ,int,int,int) ;

uint32_t layer_state_set_user(uint32_t state) {
 state = update_tri_layer_state(state, 129, 128, 130);
 switch (biton32(state)) {
  case 129:
   rgblight_sethsv_noeeprom(HSV_GREEN);
   break;
  case 128:
   rgblight_sethsv_noeeprom(HSV_GOLD);
   break;
  case 130:
   rgblight_sethsv_noeeprom(HSV_RED);
   break;
  default:
   rgblight_sethsv_noeeprom(HSV_WHITE);
   break;
 }
 return state;
}

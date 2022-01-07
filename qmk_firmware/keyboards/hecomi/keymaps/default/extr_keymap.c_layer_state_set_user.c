
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;




 int biton32 (int ) ;
 int rgblight_sethsv_noeeprom (int,int,int) ;

uint32_t layer_state_set_user(uint32_t state)
{
 uint8_t layer=biton32(state);
 switch(layer)
 {
  case 129:
   rgblight_sethsv_noeeprom(180,255,255);
   break;
  case 128:
   rgblight_sethsv_noeeprom(0,255,255);
   break;
  default:
   break;
 }
 return state;
}

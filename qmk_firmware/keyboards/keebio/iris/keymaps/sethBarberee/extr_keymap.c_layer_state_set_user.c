
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int HSV_BLUE ;
 int HSV_GREEN ;
 int HSV_ORANGE ;
 int HSV_RED ;
 int RGBLIGHT_MODE_STATIC_GRADIENT ;




 int biton32 (int ) ;
 int rgblight_mode_noeeprom (int ) ;
 int rgblight_sethsv_noeeprom (int ) ;

uint32_t layer_state_set_user(uint32_t state){
    switch(biton32(state)) {
      case 129:
        rgblight_sethsv_noeeprom(HSV_RED);
        break;
      case 130:
        rgblight_sethsv_noeeprom(HSV_GREEN);
        break;
      case 128:
        rgblight_sethsv_noeeprom(HSV_BLUE);
        break;
      case 131:
        rgblight_sethsv_noeeprom(HSV_ORANGE);
        break;
      default:
        rgblight_mode_noeeprom(RGBLIGHT_MODE_STATIC_GRADIENT + 3);
        break;

    }
    return state;
}

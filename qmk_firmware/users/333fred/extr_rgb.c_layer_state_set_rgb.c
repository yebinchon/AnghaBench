
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;






 int biton32 (int ) ;
 int rgblight_sethsv_noeeprom (int,int,int) ;

void layer_state_set_rgb(uint32_t state) {
  switch (biton32(state)) {
    case 131:

      rgblight_sethsv_noeeprom(210, 255, 20);
      break;
    case 129:

      rgblight_sethsv_noeeprom(191, 255, 20);
      break;
    case 128:

      rgblight_sethsv_noeeprom(85, 255, 20);
      break;
    case 130:

      rgblight_sethsv_noeeprom(0, 255, 20);
      break;
  }
}

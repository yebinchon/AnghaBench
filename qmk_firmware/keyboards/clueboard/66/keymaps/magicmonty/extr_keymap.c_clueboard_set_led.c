
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
 int rgblight_sethsv_noeeprom (int,int,int) ;

void clueboard_set_led(uint8_t id, uint8_t val) {
  switch (id) {
    case 133:
      rgblight_sethsv_noeeprom(190, 255, val);
      break;
    case 131:
      rgblight_sethsv_noeeprom(46, 255, val);
      break;
    case 130:
      rgblight_sethsv_noeeprom(86, 255, val);
      break;
    case 132:
      rgblight_sethsv_noeeprom(346, 255, val);
      break;
    case 128:
      rgblight_sethsv_noeeprom(206, 255, val);
      break;





  }
}

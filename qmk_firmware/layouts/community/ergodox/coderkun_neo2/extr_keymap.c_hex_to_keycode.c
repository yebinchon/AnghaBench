
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;


 int KC_0 ;
 int KC_1 ;
 int KC_NO ;
 int NEO_A ;
 int NEO_B ;
 int NEO_C ;
 int NEO_D ;
 int NEO_E ;
 int NEO_F ;

uint16_t hex_to_keycode(uint8_t hex)
{
  if(hex == 0x0) {
    return KC_0;
  }
  else if(hex >= 0xA) {
    switch(hex) {
      case 0xA:
        return NEO_A;
      case 0xB:
        return NEO_B;
      case 0xC:
        return NEO_C;
      case 0xD:
        return NEO_D;
      case 0xE:
        return NEO_E;
      case 0xF:
        return NEO_F;
      default:
        return KC_NO;
    }
  }

  return KC_1 + (hex - 0x1);
}

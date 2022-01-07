
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int CMD (int ) ;
 int KC_LBRACKET ;
 int KC_RBRACKET ;
 int KC_SLASH ;
 int SHIFTED ;



__attribute__((used)) static void comma_period(uint16_t keycode) {
  switch (keycode) {
  case 129:
    if (SHIFTED) {

      CMD(KC_LBRACKET);
    } else {

      CMD(KC_SLASH);
    }
    break;
  case 128:
    if (SHIFTED) {

      CMD(KC_RBRACKET);
    }
    break;
  }
}

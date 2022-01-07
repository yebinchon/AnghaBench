
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_3__ {int pressed; } ;
typedef TYPE_1__ keyevent_t ;



 char CALC_CHAR_ACS ;
 char CALC_CHAR_ADD ;
 char CALC_CHAR_ASN ;
 char CALC_CHAR_ATN ;
 char CALC_CHAR_BEG ;
 char CALC_CHAR_COS ;
 char CALC_CHAR_DEC ;
 char CALC_CHAR_DIV ;
 char CALC_CHAR_END ;
 char CALC_CHAR_EUL ;
 char CALC_CHAR_EXP ;
 char CALC_CHAR_LGE ;
 char CALC_CHAR_LOG ;
 char CALC_CHAR_MUL ;
 char CALC_CHAR_PI ;
 char CALC_CHAR_SIN ;
 char CALC_CHAR_SQT ;
 char CALC_CHAR_SUB ;
 char CALC_CHAR_TAN ;


 int const KC_1 ;
 int const KC_KP_0 ;
 int const KC_KP_1 ;
 int const KC_KP_9 ;
 int MODS_SHIFT_MASK ;
 int get_mods () ;

__attribute__((used)) static int process_input(const uint16_t keycode, const uint8_t mods, const keyevent_t event)
{

  if(!event.pressed)
  {
    switch(keycode)
    {

      case 131:
      case 135:
        return 0;
        break;
    }

    return -1;
  }


  char characterPressed;
  if((get_mods() & MODS_SHIFT_MASK))
  {
    switch(keycode)
    {
      case 147:
        characterPressed = CALC_CHAR_BEG;
        break;
      case 150:
        characterPressed = CALC_CHAR_END;
        break;
      case 142:
        characterPressed = CALC_CHAR_ADD;
        break;
      case 138:
        characterPressed = CALC_CHAR_ADD;
        break;
      case 149:
        characterPressed = CALC_CHAR_EXP;
        break;
      case 148:
        characterPressed = CALC_CHAR_MUL;
        break;
      case 141:
        characterPressed = CALC_CHAR_MUL;
        break;
      case 130:
        characterPressed = CALC_CHAR_ASN;
        break;
      case 145:
        characterPressed = CALC_CHAR_ACS;
        break;
      case 128:
        characterPressed = CALC_CHAR_ATN;
        break;
      case 136:
        characterPressed = CALC_CHAR_LOG;
        break;
      default:
        return -1;
        break;
    }
    return characterPressed;
  }




  if (keycode == KC_KP_0 || keycode == 150) {
    return '0';
  } else if (keycode >= KC_KP_1 && keycode <= KC_KP_9) {
    return keycode - KC_KP_1 +1 + '0';
  } else if (keycode >= KC_1 && keycode <= 147) {
    return keycode - KC_1 +1 + '0';
  }


  switch (keycode) {
    case 134:
    case 139:
      return characterPressed = CALC_CHAR_SUB;
    case 129:
    case 137:
      return characterPressed = CALC_CHAR_DIV;
    case 130:
      return characterPressed = CALC_CHAR_SIN;
    case 145:
      return characterPressed = CALC_CHAR_COS;
    case 128:
      return characterPressed = CALC_CHAR_TAN;
    case 132:
      return characterPressed = CALC_CHAR_SQT;
    case 136:
      return characterPressed = CALC_CHAR_LGE;
    case 144:
    case 140:
      return characterPressed = CALC_CHAR_DEC;
    case 133:
      return characterPressed = CALC_CHAR_PI;
    case 143:
      return characterPressed = CALC_CHAR_EUL;
    case 146:
      return -2;
    case 131:
      return 0;
    case 135:
      return 0;
    case 152:
      return -3;
    case 151:
      return -4;
    default:
      return -1;
  }
}

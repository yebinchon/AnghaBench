
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;






 int RGBLIGHT_MODE_RAINBOW_SWIRL ;

 int biton32 (int ) ;
 int rgblight_mode (int) ;

uint32_t layer_state_set_user(uint32_t state)
{
  switch (biton32(state))
  {
    case 129:
      rgblight_mode(9);
      break;
    case 130:
      rgblight_mode(29);
      break;
    case 131:
      rgblight_mode(26);
      break;
    case 128:
      rgblight_mode(1);
      break;
    case 132:
      rgblight_mode(RGBLIGHT_MODE_RAINBOW_SWIRL+5);
      break;
  }
  return state;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;





 int biton32 (int ) ;
 int rgblight_setrgb (int,int,int) ;

uint32_t layer_state_set_user(uint32_t state) {
    switch (biton32(state)) {
    case 128:
        rgblight_setrgb(0, 16, 0);
        break;
    case 129:
        rgblight_setrgb(0, 0, 16);
        break;
    case 130:
        rgblight_setrgb (16, 0, 16);
        break;

    default:
        rgblight_setrgb (16, 0, 16);
        break;
    }
  return state;
}

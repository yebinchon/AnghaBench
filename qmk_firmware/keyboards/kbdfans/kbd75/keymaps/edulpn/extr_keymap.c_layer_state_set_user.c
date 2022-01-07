
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;






 int biton32 (int ) ;
 int rgblight_setrgb (int,int,int) ;
 int rgblight_setrgb_blue () ;
 int rgblight_setrgb_white () ;

uint32_t layer_state_set_user(uint32_t state) {
    switch (biton32(state)) {
    case 128:
        rgblight_setrgb_blue();
        break;
    case 129:
        rgblight_setrgb_blue();
        break;
    case 130:
        rgblight_setrgb_white();
        break;
    case 131:
        rgblight_setrgb_white();
        break;
    default:
        rgblight_setrgb (0x00, 0xFF, 0xFF);
        break;
    }
    return state;
}

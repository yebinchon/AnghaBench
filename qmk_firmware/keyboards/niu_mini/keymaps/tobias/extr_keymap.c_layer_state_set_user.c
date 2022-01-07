
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int layer_state_t ;


 int KC_NLCK ;







 int biton32 (int ) ;
 int bnumlock ;
 int rgbflag (int,int,int) ;
 int rgblight_mode (int) ;
 int tap_code (int ) ;
 int workmode ;

layer_state_t layer_state_set_user(layer_state_t state) {

    switch (biton32(state)) {
    case 129:
        if(!workmode){
            rgblight_mode(9);
        }
        else if(workmode){
            rgblight_mode(1);
            rgbflag(0x00, 0x00, 0x00);
        }
        if(bnumlock) {
            tap_code(KC_NLCK);
        }
        break;
    case 131:
            rgblight_mode(1);
        if(!bnumlock) {
            tap_code(KC_NLCK);
        }
        rgbflag(0xFF, 0x00, 0x00);

        break;
    case 134:
        rgblight_mode(1);
        rgbflag(0xFF, 0xFF, 0xFF);
        if(bnumlock) {
                tap_code(KC_NLCK);
        }
        break;
    case 128:
        rgblight_mode(1);
        rgbflag(0x00, 0xFF, 0x00);
        if(bnumlock) {
                tap_code(KC_NLCK);
        }
        break;
    case 133:
        rgblight_mode(1);
        rgbflag(0x00, 0x00, 0xFF);
        if(bnumlock) {
                tap_code(KC_NLCK);
        }
        break;
    case 132:
            rgblight_mode(1);
            rgbflag(0xFF, 0x00, 0xFF);
        break;
    case 130:
        rgblight_mode(1);
        rgbflag(0x00, 0xFF, 0xFF);
        if(bnumlock) {
                tap_code(KC_NLCK);
        }
        break;
    default:
        rgblight_mode(1);
        if(bnumlock) {
            tap_code(KC_NLCK);
        }
        rgbflag(0xFF, 0xFF, 0xFF);
        break;
    }

  return state;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int KC_NLCK ;






 int biton32 (int ) ;
 int bnumlock ;
 int tap_code (int ) ;

uint32_t layer_state_set_user(uint32_t state) {

    switch (biton32(state)) {
    case 129:
        if(bnumlock) {
            tap_code(KC_NLCK);
        }
        break;
    case 130:
        if(!bnumlock) {
            tap_code(KC_NLCK);
        }

        break;
    case 133:
        if(bnumlock) {
                tap_code(KC_NLCK);
        }
        break;
    case 128:
        if(bnumlock) {
                tap_code(KC_NLCK);
        }
        break;
    case 132:
        if(bnumlock) {
                tap_code(KC_NLCK);
        }
        break;
    case 131:
        break;
    default:
        if(bnumlock) {
                tap_code(KC_NLCK);
        }

        break;
    }

  return state;
}

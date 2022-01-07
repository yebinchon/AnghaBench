
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int HSV_BLUE ;
 int HSV_CYAN ;
 int HSV_RED ;
 int HSV_SPRINGGREEN ;



 int base_mode ;
 int biton32 (int ) ;
 int flight_mode ;
 int panic_mode ;
 int rcs_mode ;
 int rgblight_sethsv_noeeprom (int ) ;

uint32_t layer_state_set_user(uint32_t state) {
    base_mode = 0;
    panic_mode = 0;
    flight_mode = 0;
    rcs_mode = 0;

    switch (biton32(state)) {
    case 129:
        panic_mode = 1;
        rgblight_sethsv_noeeprom(HSV_RED);
        break;
    case 130:
        flight_mode = 1;
        rgblight_sethsv_noeeprom(HSV_CYAN);
        break;
    case 128:
        rcs_mode = 1;
        rgblight_sethsv_noeeprom(HSV_BLUE);
        break;
    default:
        base_mode = 1;
        rgblight_sethsv_noeeprom(HSV_SPRINGGREEN);
        break;
    }
    return state;
}

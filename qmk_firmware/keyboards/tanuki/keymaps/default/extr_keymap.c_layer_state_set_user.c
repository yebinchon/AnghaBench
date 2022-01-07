
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {scalar_t__ layer_rgb; } ;






 int biton32 (int ) ;
 int rgblight_mode_noeeprom (int) ;
 int rgblight_sethsv_noeeprom (int,int,int) ;
 TYPE_1__ user_config ;

uint32_t layer_state_set_user(uint32_t state) {

    if(user_config.layer_rgb) {
        switch (biton32(state)) {
            case 131:
                rgblight_sethsv_noeeprom(0,10,255);
                rgblight_mode_noeeprom(1);
                break;
            case 130:
                rgblight_sethsv_noeeprom(130,200,255);
                rgblight_mode_noeeprom(1);
                break;
            case 128:
                rgblight_sethsv_noeeprom(170,200,255);
                rgblight_mode_noeeprom(1);
                break;
            case 129:
                rgblight_sethsv_noeeprom(0,180,255);
                rgblight_mode_noeeprom(1);
                break;
        }
    }
    return state;
}

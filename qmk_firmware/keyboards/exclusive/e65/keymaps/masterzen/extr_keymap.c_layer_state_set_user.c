
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_2__ {int val; int sat; int hue; int mode; } ;


 scalar_t__ BASE ;

 int biton32 (scalar_t__) ;
 int edit ;
 int rgblight_get_hue () ;
 int rgblight_get_mode () ;
 int rgblight_get_sat () ;
 int rgblight_get_val () ;
 int rgblight_mode (int ) ;
 int rgblight_mode_noeeprom (int) ;
 int rgblight_sethsv (int ,int ,int ) ;
 int rgblight_setrgb (int,int,int) ;
 TYPE_1__ temp_config ;

uint32_t layer_state_set_user(uint32_t state) {
    if (state == BASE && edit == 1) {
        temp_config.hue = rgblight_get_hue();
        temp_config.sat = rgblight_get_sat();
        temp_config.val = rgblight_get_val();
        edit = 0;
    }

    switch (biton32(state)) {
        case 128:
            temp_config.mode = rgblight_get_mode();
            rgblight_mode_noeeprom(1);
            rgblight_setrgb(0xD3, 0x7F, 0xED);
            edit = 1;
            break;
        default:
            rgblight_mode(temp_config.mode);
            rgblight_sethsv(temp_config.hue, temp_config.sat, temp_config.val);
            break;
    }
    return state;
}

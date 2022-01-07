
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_4__ {int pressed; } ;
struct TYPE_5__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;





 int rgblight_show_solid_color (int,int,int) ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
    switch (keycode) {
        case 128:
            if (record->event.pressed) {
                rgblight_show_solid_color(0xFF, 0x00, 0x00);
            } else {
                rgblight_show_solid_color(0xFF, 0xFF, 0xFF);
            }
            return 0;
        case 129:
            if (record->event.pressed) {
                rgblight_show_solid_color(0x00, 0xFF, 0x00);
            } else {
                rgblight_show_solid_color(0xFF, 0xFF, 0xFF);
            }
            return 0;
        case 130:
            if (record->event.pressed) {
                rgblight_show_solid_color(0x00, 0x00, 0xFF);
            } else {
                rgblight_show_solid_color(0xFF, 0xFF, 0xFF);
            }
            return 0;
    }
    return 1;
}

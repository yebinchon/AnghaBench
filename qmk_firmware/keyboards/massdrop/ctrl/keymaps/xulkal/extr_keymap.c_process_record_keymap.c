
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






 int MODS_CTRL ;
 int MODS_SHIFT ;
 int TOGGLE_FLAG_AND_PRINT (int ,char*) ;


 int debug_enable ;
 int debug_keyboard ;
 int debug_matrix ;
 int debug_mouse ;
 int usb_extra_manual ;
 int usb_gcr_auto ;

bool process_record_keymap(uint16_t keycode, keyrecord_t *record)
{
    switch (keycode) {
        case 128:
            if (record->event.pressed && MODS_SHIFT && MODS_CTRL)
                TOGGLE_FLAG_AND_PRINT(usb_extra_manual, "USB extra port manual mode");
            return 0;
        case 129:
            if (record->event.pressed && MODS_SHIFT && MODS_CTRL)
                TOGGLE_FLAG_AND_PRINT(usb_gcr_auto, "USB GCR auto mode");
            return 0;
        case 130:
            if (record->event.pressed)
                TOGGLE_FLAG_AND_PRINT(debug_enable, "Debug mode");
            return 0;
        case 131:
            if (record->event.pressed)
                TOGGLE_FLAG_AND_PRINT(debug_matrix, "Debug matrix");
            return 0;
        case 133:
            if (record->event.pressed)
                TOGGLE_FLAG_AND_PRINT(debug_keyboard, "Debug keyboard");
            return 0;
        case 132:
            if (record->event.pressed)
                TOGGLE_FLAG_AND_PRINT(debug_mouse, "Debug mouse");
            return 0;
    }

    return 1;
}

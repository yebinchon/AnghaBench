
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_4__ {int pressed; } ;
struct TYPE_5__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;
 int const LED_FLAG_NONE ;


 int MODS_CTRL ;
 int MODS_SHIFT ;

 int TOGGLE_FLAG_AND_PRINT (int ,char*) ;


 int clear_keyboard () ;
 int debug_enable ;
 int debug_keyboard ;
 int debug_matrix ;
 int debug_mouse ;
 int reset_keyboard () ;
 int reset_oneshot_layer () ;
 int rgb_matrix_disable_noeeprom () ;
 int rgb_matrix_enable_noeeprom () ;
 int rgb_matrix_get_flags () ;
 int rgb_matrix_set_color_all (int ,int ,int ) ;
 int rgb_matrix_set_flags (int const) ;
 int timer_elapsed32 (int ) ;
 int timer_read32 () ;
 int usb_extra_manual ;
 int usb_gcr_auto ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
    static uint32_t key_timer;

    switch (keycode) {
        case 135:
            clear_keyboard();
            reset_oneshot_layer();
            return 1;
        case 128:
            if (record->event.pressed && MODS_SHIFT && MODS_CTRL) {
                TOGGLE_FLAG_AND_PRINT(usb_extra_manual, "USB extra port manual mode");
            }
            return 0;
        case 129:
            if (record->event.pressed && MODS_SHIFT && MODS_CTRL) {
                TOGGLE_FLAG_AND_PRINT(usb_gcr_auto, "USB GCR auto mode");
            }
            return 0;
        case 136:
            if (record->event.pressed) {
                TOGGLE_FLAG_AND_PRINT(debug_enable, "Debug mode");
            }
            return 0;
        case 137:
            if (record->event.pressed) {
                TOGGLE_FLAG_AND_PRINT(debug_matrix, "Debug matrix");
            }
            return 0;
        case 139:
            if (record->event.pressed) {
                TOGGLE_FLAG_AND_PRINT(debug_keyboard, "Debug keyboard");
            }
            return 0;
        case 138:
            if (record->event.pressed) {
                TOGGLE_FLAG_AND_PRINT(debug_mouse, "Debug mouse");
            }
            return 0;
        case 131:
            if (record->event.pressed) {
                key_timer = timer_read32();
            } else {
                if (timer_elapsed32(key_timer) >= 500) {
                    reset_keyboard();
                }
            }
            return 0;
        case 130:
            if (record->event.pressed) {
              switch (rgb_matrix_get_flags()) {
                case 134: {
                    rgb_matrix_set_flags(133);
                    rgb_matrix_set_color_all(0, 0, 0);
                  }
                  break;
                case 133: {
                    rgb_matrix_set_flags(132);
                    rgb_matrix_set_color_all(0, 0, 0);
                  }
                  break;
                case 132: {
                    rgb_matrix_set_flags(LED_FLAG_NONE);
                    rgb_matrix_disable_noeeprom();
                  }
                  break;
                default: {
                    rgb_matrix_set_flags(134);
                    rgb_matrix_enable_noeeprom();
                  }
                  break;
              }
            }
            return 0;
        default:
            return 1;
    }
}

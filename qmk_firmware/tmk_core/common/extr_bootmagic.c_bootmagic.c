
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int layer_state_t ;
struct TYPE_4__ {int matrix; int keyboard; int mouse; int enable; int raw; } ;
struct TYPE_3__ {int swap_control_capslock; int capslock_to_control; int swap_lalt_lgui; int swap_ralt_rgui; int no_gui; int swap_grave_esc; int swap_backslash_backspace; int nkro; int raw; } ;


 int BOOTMAGIC_HOST_NKRO ;
 int BOOTMAGIC_KEY_BOOTLOADER ;
 int BOOTMAGIC_KEY_CAPSLOCK_TO_CONTROL ;
 int BOOTMAGIC_KEY_DEBUG_ENABLE ;
 int BOOTMAGIC_KEY_DEBUG_KEYBOARD ;
 int BOOTMAGIC_KEY_DEBUG_MATRIX ;
 int BOOTMAGIC_KEY_DEBUG_MOUSE ;
 int BOOTMAGIC_KEY_DEFAULT_LAYER_0 ;
 int BOOTMAGIC_KEY_DEFAULT_LAYER_1 ;
 int BOOTMAGIC_KEY_DEFAULT_LAYER_2 ;
 int BOOTMAGIC_KEY_DEFAULT_LAYER_3 ;
 int BOOTMAGIC_KEY_DEFAULT_LAYER_4 ;
 int BOOTMAGIC_KEY_DEFAULT_LAYER_5 ;
 int BOOTMAGIC_KEY_DEFAULT_LAYER_6 ;
 int BOOTMAGIC_KEY_DEFAULT_LAYER_7 ;
 int BOOTMAGIC_KEY_EEPROM_CLEAR ;
 int BOOTMAGIC_KEY_EE_HANDS_LEFT ;
 int BOOTMAGIC_KEY_EE_HANDS_RIGHT ;
 int BOOTMAGIC_KEY_NO_GUI ;
 int BOOTMAGIC_KEY_SKIP ;
 int BOOTMAGIC_KEY_SWAP_BACKSLASH_BACKSPACE ;
 int BOOTMAGIC_KEY_SWAP_CONTROL_CAPSLOCK ;
 int BOOTMAGIC_KEY_SWAP_GRAVE_ESC ;
 int BOOTMAGIC_KEY_SWAP_LALT_LGUI ;
 int BOOTMAGIC_KEY_SWAP_RALT_RGUI ;
 int bootloader_jump () ;
 scalar_t__ bootmagic_scan_keycode (int ) ;
 TYPE_2__ debug_config ;
 int default_layer_set (int ) ;
 int eeconfig_init () ;
 int eeconfig_is_enabled () ;
 int eeconfig_read_debug () ;
 int eeconfig_read_default_layer () ;
 int eeconfig_read_keymap () ;
 int eeconfig_update_debug (int ) ;
 int eeconfig_update_default_layer (int) ;
 int eeconfig_update_handedness (int) ;
 int eeconfig_update_keymap (int ) ;
 TYPE_1__ keymap_config ;
 int matrix_scan () ;
 int print (char*) ;
 int wait_ms (int) ;

void bootmagic(void) {

    if (!eeconfig_is_enabled()) {
        eeconfig_init();
    }


    print("bootmagic scan: ... ");
    uint8_t scan = 100;
    while (scan--) {
        matrix_scan();
        wait_ms(10);
    }
    print("done.\n");


    if (bootmagic_scan_keycode(BOOTMAGIC_KEY_SKIP)) {
        return;
    }


    if (bootmagic_scan_keycode(BOOTMAGIC_KEY_EEPROM_CLEAR)) {
        eeconfig_init();
    }


    if (bootmagic_scan_keycode(BOOTMAGIC_KEY_BOOTLOADER)) {
        bootloader_jump();
    }


    debug_config.raw = eeconfig_read_debug();
    if (bootmagic_scan_keycode(BOOTMAGIC_KEY_DEBUG_ENABLE)) {
        if (bootmagic_scan_keycode(BOOTMAGIC_KEY_DEBUG_MATRIX)) {
            debug_config.matrix = !debug_config.matrix;
        } else if (bootmagic_scan_keycode(BOOTMAGIC_KEY_DEBUG_KEYBOARD)) {
            debug_config.keyboard = !debug_config.keyboard;
        } else if (bootmagic_scan_keycode(BOOTMAGIC_KEY_DEBUG_MOUSE)) {
            debug_config.mouse = !debug_config.mouse;
        } else {
            debug_config.enable = !debug_config.enable;
        }
    }
    eeconfig_update_debug(debug_config.raw);


    keymap_config.raw = eeconfig_read_keymap();
    if (bootmagic_scan_keycode(BOOTMAGIC_KEY_SWAP_CONTROL_CAPSLOCK)) {
        keymap_config.swap_control_capslock = !keymap_config.swap_control_capslock;
    }
    if (bootmagic_scan_keycode(BOOTMAGIC_KEY_CAPSLOCK_TO_CONTROL)) {
        keymap_config.capslock_to_control = !keymap_config.capslock_to_control;
    }
    if (bootmagic_scan_keycode(BOOTMAGIC_KEY_SWAP_LALT_LGUI)) {
        keymap_config.swap_lalt_lgui = !keymap_config.swap_lalt_lgui;
    }
    if (bootmagic_scan_keycode(BOOTMAGIC_KEY_SWAP_RALT_RGUI)) {
        keymap_config.swap_ralt_rgui = !keymap_config.swap_ralt_rgui;
    }
    if (bootmagic_scan_keycode(BOOTMAGIC_KEY_NO_GUI)) {
        keymap_config.no_gui = !keymap_config.no_gui;
    }
    if (bootmagic_scan_keycode(BOOTMAGIC_KEY_SWAP_GRAVE_ESC)) {
        keymap_config.swap_grave_esc = !keymap_config.swap_grave_esc;
    }
    if (bootmagic_scan_keycode(BOOTMAGIC_KEY_SWAP_BACKSLASH_BACKSPACE)) {
        keymap_config.swap_backslash_backspace = !keymap_config.swap_backslash_backspace;
    }
    if (bootmagic_scan_keycode(BOOTMAGIC_HOST_NKRO)) {
        keymap_config.nkro = !keymap_config.nkro;
    }
    eeconfig_update_keymap(keymap_config.raw);


    uint8_t default_layer = 0;
    if (bootmagic_scan_keycode(BOOTMAGIC_KEY_DEFAULT_LAYER_0)) {
        default_layer |= (1 << 0);
    }
    if (bootmagic_scan_keycode(BOOTMAGIC_KEY_DEFAULT_LAYER_1)) {
        default_layer |= (1 << 1);
    }
    if (bootmagic_scan_keycode(BOOTMAGIC_KEY_DEFAULT_LAYER_2)) {
        default_layer |= (1 << 2);
    }
    if (bootmagic_scan_keycode(BOOTMAGIC_KEY_DEFAULT_LAYER_3)) {
        default_layer |= (1 << 3);
    }
    if (bootmagic_scan_keycode(BOOTMAGIC_KEY_DEFAULT_LAYER_4)) {
        default_layer |= (1 << 4);
    }
    if (bootmagic_scan_keycode(BOOTMAGIC_KEY_DEFAULT_LAYER_5)) {
        default_layer |= (1 << 5);
    }
    if (bootmagic_scan_keycode(BOOTMAGIC_KEY_DEFAULT_LAYER_6)) {
        default_layer |= (1 << 6);
    }
    if (bootmagic_scan_keycode(BOOTMAGIC_KEY_DEFAULT_LAYER_7)) {
        default_layer |= (1 << 7);
    }
    if (default_layer) {
        eeconfig_update_default_layer(default_layer);
        default_layer_set((layer_state_t)default_layer);
    } else {
        default_layer = eeconfig_read_default_layer();
        default_layer_set((layer_state_t)default_layer);
    }


    if (bootmagic_scan_keycode(BOOTMAGIC_KEY_EE_HANDS_LEFT)) {
        eeconfig_update_handedness(1);
    }
    if (bootmagic_scan_keycode(BOOTMAGIC_KEY_EE_HANDS_RIGHT)) {
        eeconfig_update_handedness(0);
    }
}

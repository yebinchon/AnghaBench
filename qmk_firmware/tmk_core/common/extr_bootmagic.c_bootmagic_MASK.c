#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  layer_state_t ;
struct TYPE_4__ {int matrix; int keyboard; int mouse; int enable; int /*<<< orphan*/  raw; } ;
struct TYPE_3__ {int swap_control_capslock; int capslock_to_control; int swap_lalt_lgui; int swap_ralt_rgui; int no_gui; int swap_grave_esc; int swap_backslash_backspace; int nkro; int /*<<< orphan*/  raw; } ;

/* Variables and functions */
 int /*<<< orphan*/  BOOTMAGIC_HOST_NKRO ; 
 int /*<<< orphan*/  BOOTMAGIC_KEY_BOOTLOADER ; 
 int /*<<< orphan*/  BOOTMAGIC_KEY_CAPSLOCK_TO_CONTROL ; 
 int /*<<< orphan*/  BOOTMAGIC_KEY_DEBUG_ENABLE ; 
 int /*<<< orphan*/  BOOTMAGIC_KEY_DEBUG_KEYBOARD ; 
 int /*<<< orphan*/  BOOTMAGIC_KEY_DEBUG_MATRIX ; 
 int /*<<< orphan*/  BOOTMAGIC_KEY_DEBUG_MOUSE ; 
 int /*<<< orphan*/  BOOTMAGIC_KEY_DEFAULT_LAYER_0 ; 
 int /*<<< orphan*/  BOOTMAGIC_KEY_DEFAULT_LAYER_1 ; 
 int /*<<< orphan*/  BOOTMAGIC_KEY_DEFAULT_LAYER_2 ; 
 int /*<<< orphan*/  BOOTMAGIC_KEY_DEFAULT_LAYER_3 ; 
 int /*<<< orphan*/  BOOTMAGIC_KEY_DEFAULT_LAYER_4 ; 
 int /*<<< orphan*/  BOOTMAGIC_KEY_DEFAULT_LAYER_5 ; 
 int /*<<< orphan*/  BOOTMAGIC_KEY_DEFAULT_LAYER_6 ; 
 int /*<<< orphan*/  BOOTMAGIC_KEY_DEFAULT_LAYER_7 ; 
 int /*<<< orphan*/  BOOTMAGIC_KEY_EEPROM_CLEAR ; 
 int /*<<< orphan*/  BOOTMAGIC_KEY_EE_HANDS_LEFT ; 
 int /*<<< orphan*/  BOOTMAGIC_KEY_EE_HANDS_RIGHT ; 
 int /*<<< orphan*/  BOOTMAGIC_KEY_NO_GUI ; 
 int /*<<< orphan*/  BOOTMAGIC_KEY_SKIP ; 
 int /*<<< orphan*/  BOOTMAGIC_KEY_SWAP_BACKSLASH_BACKSPACE ; 
 int /*<<< orphan*/  BOOTMAGIC_KEY_SWAP_CONTROL_CAPSLOCK ; 
 int /*<<< orphan*/  BOOTMAGIC_KEY_SWAP_GRAVE_ESC ; 
 int /*<<< orphan*/  BOOTMAGIC_KEY_SWAP_LALT_LGUI ; 
 int /*<<< orphan*/  BOOTMAGIC_KEY_SWAP_RALT_RGUI ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__ debug_config ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 TYPE_1__ keymap_config ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 

void FUNC15(void) {
    /* check signature */
    if (!FUNC4()) {
        FUNC3();
    }

    /* do scans in case of bounce */
    FUNC13("bootmagic scan: ... ");
    uint8_t scan = 100;
    while (scan--) {
        FUNC12();
        FUNC14(10);
    }
    FUNC13("done.\n");

    /* bootmagic skip */
    if (FUNC1(BOOTMAGIC_KEY_SKIP)) {
        return;
    }

    /* eeconfig clear */
    if (FUNC1(BOOTMAGIC_KEY_EEPROM_CLEAR)) {
        FUNC3();
    }

    /* bootloader */
    if (FUNC1(BOOTMAGIC_KEY_BOOTLOADER)) {
        FUNC0();
    }

    /* debug enable */
    debug_config.raw = FUNC5();
    if (FUNC1(BOOTMAGIC_KEY_DEBUG_ENABLE)) {
        if (FUNC1(BOOTMAGIC_KEY_DEBUG_MATRIX)) {
            debug_config.matrix = !debug_config.matrix;
        } else if (FUNC1(BOOTMAGIC_KEY_DEBUG_KEYBOARD)) {
            debug_config.keyboard = !debug_config.keyboard;
        } else if (FUNC1(BOOTMAGIC_KEY_DEBUG_MOUSE)) {
            debug_config.mouse = !debug_config.mouse;
        } else {
            debug_config.enable = !debug_config.enable;
        }
    }
    FUNC8(debug_config.raw);

    /* keymap config */
    keymap_config.raw = FUNC7();
    if (FUNC1(BOOTMAGIC_KEY_SWAP_CONTROL_CAPSLOCK)) {
        keymap_config.swap_control_capslock = !keymap_config.swap_control_capslock;
    }
    if (FUNC1(BOOTMAGIC_KEY_CAPSLOCK_TO_CONTROL)) {
        keymap_config.capslock_to_control = !keymap_config.capslock_to_control;
    }
    if (FUNC1(BOOTMAGIC_KEY_SWAP_LALT_LGUI)) {
        keymap_config.swap_lalt_lgui = !keymap_config.swap_lalt_lgui;
    }
    if (FUNC1(BOOTMAGIC_KEY_SWAP_RALT_RGUI)) {
        keymap_config.swap_ralt_rgui = !keymap_config.swap_ralt_rgui;
    }
    if (FUNC1(BOOTMAGIC_KEY_NO_GUI)) {
        keymap_config.no_gui = !keymap_config.no_gui;
    }
    if (FUNC1(BOOTMAGIC_KEY_SWAP_GRAVE_ESC)) {
        keymap_config.swap_grave_esc = !keymap_config.swap_grave_esc;
    }
    if (FUNC1(BOOTMAGIC_KEY_SWAP_BACKSLASH_BACKSPACE)) {
        keymap_config.swap_backslash_backspace = !keymap_config.swap_backslash_backspace;
    }
    if (FUNC1(BOOTMAGIC_HOST_NKRO)) {
        keymap_config.nkro = !keymap_config.nkro;
    }
    FUNC11(keymap_config.raw);

    /* default layer */
    uint8_t default_layer = 0;
    if (FUNC1(BOOTMAGIC_KEY_DEFAULT_LAYER_0)) {
        default_layer |= (1 << 0);
    }
    if (FUNC1(BOOTMAGIC_KEY_DEFAULT_LAYER_1)) {
        default_layer |= (1 << 1);
    }
    if (FUNC1(BOOTMAGIC_KEY_DEFAULT_LAYER_2)) {
        default_layer |= (1 << 2);
    }
    if (FUNC1(BOOTMAGIC_KEY_DEFAULT_LAYER_3)) {
        default_layer |= (1 << 3);
    }
    if (FUNC1(BOOTMAGIC_KEY_DEFAULT_LAYER_4)) {
        default_layer |= (1 << 4);
    }
    if (FUNC1(BOOTMAGIC_KEY_DEFAULT_LAYER_5)) {
        default_layer |= (1 << 5);
    }
    if (FUNC1(BOOTMAGIC_KEY_DEFAULT_LAYER_6)) {
        default_layer |= (1 << 6);
    }
    if (FUNC1(BOOTMAGIC_KEY_DEFAULT_LAYER_7)) {
        default_layer |= (1 << 7);
    }
    if (default_layer) {
        FUNC9(default_layer);
        FUNC2((layer_state_t)default_layer);
    } else {
        default_layer = FUNC6();
        FUNC2((layer_state_t)default_layer);
    }

    /* EE_HANDS handedness */
    if (FUNC1(BOOTMAGIC_KEY_EE_HANDS_LEFT)) {
        FUNC10(true);
    }
    if (FUNC1(BOOTMAGIC_KEY_EE_HANDS_RIGHT)) {
        FUNC10(false);
    }
}
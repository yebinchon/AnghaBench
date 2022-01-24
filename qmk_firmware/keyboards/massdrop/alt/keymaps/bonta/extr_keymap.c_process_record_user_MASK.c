#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int uint16_t ;
struct TYPE_4__ {int /*<<< orphan*/  pressed; } ;
struct TYPE_5__ {TYPE_1__ event; } ;
typedef  TYPE_2__ keyrecord_t ;

/* Variables and functions */
#define  DBG_KBD 137 
#define  DBG_MOU 136 
#define  DBG_MTRX 135 
#define  DBG_TOG 134 
#define  LED_FLAG_ALL 133 
#define  LED_FLAG_KEYLIGHT 132 
 int const LED_FLAG_UNDERGLOW ; 
#define  MD_BOOT 131 
 int /*<<< orphan*/  MODS_CTRL ; 
 int /*<<< orphan*/  MODS_SHIFT ; 
#define  RGB_TOG 130 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
#define  U_T_AGCR 129 
#define  U_T_AUTO 128 
 int /*<<< orphan*/  debug_enable ; 
 int /*<<< orphan*/  debug_keyboard ; 
 int /*<<< orphan*/  debug_matrix ; 
 int /*<<< orphan*/  debug_mouse ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int const) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  usb_extra_manual ; 
 int /*<<< orphan*/  usb_gcr_auto ; 

bool FUNC7(uint16_t keycode, keyrecord_t *record) {
    static uint32_t key_timer;

    switch (keycode) {
        case U_T_AUTO:
            if (record->event.pressed && MODS_SHIFT && MODS_CTRL) {
                FUNC0(usb_extra_manual, "USB extra port manual mode");
            }
            return false;
        case U_T_AGCR:
            if (record->event.pressed && MODS_SHIFT && MODS_CTRL) {
                FUNC0(usb_gcr_auto, "USB GCR auto mode");
            }
            return false;
        case DBG_TOG:
            if (record->event.pressed) {
                FUNC0(debug_enable, "Debug mode");
            }
            return false;
        case DBG_MTRX:
            if (record->event.pressed) {
                FUNC0(debug_matrix, "Debug matrix");
            }
            return false;
        case DBG_KBD:
            if (record->event.pressed) {
                FUNC0(debug_keyboard, "Debug keyboard");
            }
            return false;
        case DBG_MOU:
            if (record->event.pressed) {
                FUNC0(debug_mouse, "Debug mouse");
            }
            return false;
        case RGB_TOG:
            if (record->event.pressed) {
              switch (FUNC2()) {
                case LED_FLAG_ALL: {
                    FUNC4(LED_FLAG_KEYLIGHT);
                    FUNC3(0, 0, 0);
                  }
                  break;
                case LED_FLAG_KEYLIGHT: {
                    FUNC4(LED_FLAG_UNDERGLOW);
                    FUNC3(0, 0, 0);
                  }
                  break;
                default: {
                    FUNC4(LED_FLAG_ALL);
                  }
                  break;
              }
            }
            return false;
        case MD_BOOT:
            if (record->event.pressed) {
                key_timer = FUNC6();
            } else {
                if (FUNC5(key_timer) >= 500) {
                    FUNC1();
                }
            }
            return false;
        default:
            return true; //Process all other keycodes normally
    }
}
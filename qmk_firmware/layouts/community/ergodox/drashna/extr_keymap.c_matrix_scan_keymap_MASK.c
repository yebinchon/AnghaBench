#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint8_t ;

/* Variables and functions */
 int MOD_MASK_ALT ; 
 int MOD_MASK_CTRL ; 
 int MOD_MASK_SHIFT ; 
 int USB_LED_CAPS_LOCK ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int FUNC10 () ; 
 int FUNC11 () ; 
 int FUNC12 () ; 
 int /*<<< orphan*/  skip_leds ; 

void FUNC13(void) {  // runs frequently to update info
    uint8_t modifiers     = FUNC10();
    uint8_t led_usb_state = FUNC12();
    uint8_t one_shot      = FUNC11();

    if (!skip_leds) {
        FUNC0();
        FUNC1();
        FUNC4();
        FUNC7();

        // Since we're not using the LEDs here for layer indication anymore,
        // then lets use them for modifier indicators.  Shame we don't have 4...
        // Also, no "else", since we want to know each, independently.
        if ((modifiers | one_shot) & MOD_MASK_SHIFT || led_usb_state & (1 << USB_LED_CAPS_LOCK)) {
            FUNC5();
            FUNC6(50);
        }
        if ((modifiers | one_shot) & MOD_MASK_CTRL) {
            FUNC2();
            FUNC3(10);
        }
        if ((modifiers | one_shot) & MOD_MASK_ALT) {
            FUNC8();
            FUNC9(10);
        }
    }
}
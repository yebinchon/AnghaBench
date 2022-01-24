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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int is_suspended ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ rgblight_enabled ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

void FUNC8(void) {
    // clear keyboard state
    FUNC1();
#ifdef BACKLIGHT_ENABLE
    backlight_init();
#endif
    FUNC3(FUNC2());
#if defined(RGBLIGHT_SLEEP) && defined(RGBLIGHT_ENABLE)
    is_suspended = false;
    if (rgblight_enabled) {
#    ifdef BOOTLOADER_TEENSY
        wait_ms(10);
#    endif
        rgblight_enable_noeeprom();
    }
#    ifdef RGBLIGHT_ANIMATIONS
    rgblight_timer_enable();
#    endif
#endif
    FUNC6();
}
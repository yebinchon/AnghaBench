#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  enable; } ;

/* Variables and functions */
 int is_suspended ; 
 TYPE_1__ rgblight_config ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  rgblight_enabled ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

void FUNC4(void) {
    // TODO: figure out what to power down and how
    // shouldn't power down TPM/FTM if we want a breathing LED
    // also shouldn't power down USB
#if defined(RGBLIGHT_SLEEP) && defined(RGBLIGHT_ENABLE)
#    ifdef RGBLIGHT_ANIMATIONS
    rgblight_timer_disable();
#    endif
    if (!is_suspended) {
        is_suspended     = true;
        rgblight_enabled = rgblight_config.enable;
        rgblight_disable_noeeprom();
    }
#endif

    FUNC2();
    // on AVR, this enables the watchdog for 15ms (max), and goes to
    // SLEEP_MODE_PWR_DOWN

    FUNC3(17);
}
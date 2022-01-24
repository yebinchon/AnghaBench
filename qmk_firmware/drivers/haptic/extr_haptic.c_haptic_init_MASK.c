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
struct TYPE_2__ {int mode; int /*<<< orphan*/  raw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int debug_enable ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 TYPE_1__ haptic_config ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 

void FUNC8(void) {
    debug_enable = 1;  // Debug is ON!
    if (!FUNC4()) {
        FUNC3();
    }
    haptic_config.raw = FUNC5();
    if (haptic_config.mode < 1) {
        haptic_config.mode = 1;
    }
    if (!haptic_config.mode) {
        FUNC1("No haptic config found in eeprom, setting default configs\n");
        FUNC6();
    }
#ifdef SOLENOID_ENABLE
    solenoid_setup();
    dprintf("Solenoid driver initialized\n");
#endif
#ifdef DRV2605L
    DRV_init();
    dprintf("DRV2605 driver initialized\n");
#endif
    FUNC2();
}
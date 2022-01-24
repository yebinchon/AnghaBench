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
struct TYPE_2__ {int /*<<< orphan*/  mode; scalar_t__ enable; void* raw; } ;

/* Variables and functions */
 int /*<<< orphan*/  RGBLIGHT_SPLIT_SET_CHANGE_MODEHSVS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 void* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int is_rgblight_initialized ; 
 int /*<<< orphan*/  FUNC6 () ; 
 TYPE_1__ rgblight_config ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 

void FUNC9(void) {
    /* if already initialized, don't do it again.
       If you must do it again, extern this and set to false, first.
       This is a dirty, dirty hack until proper hooks can be added for keyboard startup. */
    if (is_rgblight_initialized) {
        return;
    }

    FUNC0("rgblight_init called.\n");
    FUNC0("rgblight_init start!\n");
    if (!FUNC3()) {
        FUNC0("rgblight_init eeconfig is not enabled.\n");
        FUNC2();
        FUNC5();
    }
    rgblight_config.raw = FUNC4();
    RGBLIGHT_SPLIT_SET_CHANGE_MODEHSVS;
    if (!rgblight_config.mode) {
        FUNC0("rgblight_init rgblight_config.mode = 0. Write default values to EEPROM.\n");
        FUNC5();
        rgblight_config.raw = FUNC4();
    }
    FUNC6();

    FUNC1();  // display current eeprom values

#ifdef RGBLIGHT_USE_TIMER
    rgblight_timer_init();  // setup the timer
#endif

    if (rgblight_config.enable) {
        FUNC7(rgblight_config.mode);
    }

    is_rgblight_initialized = true;
}
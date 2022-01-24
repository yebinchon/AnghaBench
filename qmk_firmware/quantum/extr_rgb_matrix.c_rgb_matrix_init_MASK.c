#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint8_t ;
struct TYPE_8__ {void** tick; scalar_t__ count; } ;
struct TYPE_7__ {void** tick; scalar_t__ count; } ;
struct TYPE_6__ {int /*<<< orphan*/  mode; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* init ) () ;} ;

/* Variables and functions */
 size_t LED_HITS_TO_REMEMBER ; 
 void* UINT16_MAX ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 TYPE_4__ g_last_hit_tracker ; 
 TYPE_3__ last_hit_buffer ; 
 TYPE_2__ rgb_matrix_config ; 
 TYPE_1__ rgb_matrix_driver ; 
 int /*<<< orphan*/  FUNC6 () ; 

void FUNC7(void) {
    rgb_matrix_driver.init();

    // TODO: put the 1 second startup delay here?

#ifdef RGB_MATRIX_KEYREACTIVE_ENABLED
    g_last_hit_tracker.count = 0;
    for (uint8_t i = 0; i < LED_HITS_TO_REMEMBER; ++i) {
        g_last_hit_tracker.tick[i] = UINT16_MAX;
    }

    last_hit_buffer.count = 0;
    for (uint8_t i = 0; i < LED_HITS_TO_REMEMBER; ++i) {
        last_hit_buffer.tick[i] = UINT16_MAX;
    }
#endif  // RGB_MATRIX_KEYREACTIVE_ENABLED

    if (!FUNC3()) {
        FUNC0("rgb_matrix_init_drivers eeconfig is not enabled.\n");
        FUNC2();
        FUNC5();
    }

    FUNC4();
    if (!rgb_matrix_config.mode) {
        FUNC0("rgb_matrix_init_drivers rgb_matrix_config.mode = 0. Write default values to EEPROM.\n");
        FUNC5();
    }
    FUNC1();  // display current eeprom values
}
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
struct TYPE_4__ {void* raw; int /*<<< orphan*/  mode; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* init ) () ;} ;

/* Variables and functions */
 int LED_DRIVER_LED_COUNT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 void* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int* g_key_hit ; 
 TYPE_2__ led_matrix_config ; 
 TYPE_1__ led_matrix_driver ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

void FUNC8(void) {
    led_matrix_driver.init();

    // Wait half a second for the driver to finish initializing
    FUNC7(500);

    // clear the key hits
    for (int led = 0; led < LED_DRIVER_LED_COUNT; led++) {
        g_key_hit[led] = 255;
    }

    if (!FUNC3()) {
        FUNC0("led_matrix_init_drivers eeconfig is not enabled.\n");
        FUNC2();
        FUNC5();
    }

    led_matrix_config.raw = FUNC4();

    if (!led_matrix_config.mode) {
        FUNC0("led_matrix_init_drivers led_matrix_config.mode = 0. Write default values to EEPROM.\n");
        FUNC5();
        led_matrix_config.raw = FUNC4();
    }

    FUNC1();  // display current eeprom values
}
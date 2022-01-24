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
struct TYPE_2__ {scalar_t__ rgb_matrix_enable; int /*<<< orphan*/  raw; } ;

/* Variables and functions */
 int /*<<< orphan*/  LED_FLAG_ALL ; 
 int /*<<< orphan*/  LED_FLAG_NONE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_1__ keyboard_config ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(void) {
    if (!FUNC1()) {
      FUNC0();
    }
    // read kb settings from eeprom
    keyboard_config.raw = FUNC2();
#if defined(RGB_MATRIX_ENABLE) && defined(ORYX_CONFIGURATOR)
    if (keyboard_config.rgb_matrix_enable) {
        rgb_matrix_set_flags(LED_FLAG_ALL);
    } else {
        rgb_matrix_set_flags(LED_FLAG_NONE);
    }
#endif
    FUNC4();
    FUNC3();
}
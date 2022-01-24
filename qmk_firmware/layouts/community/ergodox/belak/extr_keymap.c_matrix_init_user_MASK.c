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
 int /*<<< orphan*/  EECONFIG_BELAK ; 
 scalar_t__ EECONFIG_BELAK_MAGIC ; 
 int /*<<< orphan*/  EECONFIG_BELAK_SWAP_GUI_CTRL ; 
 int /*<<< orphan*/  SWPH ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int swap_gui_ctrl ; 

void FUNC5(void) {
    // If our magic word wasn't set properly, we need to zero out the settings.
    if (FUNC1(EECONFIG_BELAK) != EECONFIG_BELAK_MAGIC) {
        FUNC3(EECONFIG_BELAK, EECONFIG_BELAK_MAGIC);
        FUNC2(EECONFIG_BELAK_SWAP_GUI_CTRL, 0);
    }

    if (FUNC0(EECONFIG_BELAK_SWAP_GUI_CTRL)) {
        FUNC4(SWPH);
        swap_gui_ctrl = 1;
    }
}
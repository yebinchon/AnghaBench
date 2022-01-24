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
 int /*<<< orphan*/  WDTO_500MS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int debug_enable ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(void)
{
    debug_enable=true;
    FUNC3("meira matrix_init_kb\n");

#ifdef ISSI_ENABLE
    issi_init();
#endif
    FUNC0(5);
#ifdef WATCHDOG_ENABLE
    // This is done after turning the layer LED red, if we're caught in a loop
    // we should get a flashing red light
    wdt_enable(WDTO_500MS);
#endif

    // put your keyboard start-up code here
    // runs once when the firmware starts up
    FUNC2();
}
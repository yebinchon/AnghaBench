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
 int MCUSR ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int WDRF ; 
 int /*<<< orphan*/  clock_div_1 ; 
 int /*<<< orphan*/  clock_div_2 ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sendchar ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static void FUNC6(void)
{
    /* Disable watchdog if enabled by bootloader/fuses */
    MCUSR &= ~(1 << WDRF);
    FUNC5();

    /* Disable clock division */
#if (F_CPU == 8000000)
    clock_prescale_set(clock_div_2);    // 16MHz crystal divided by 2
#else
    FUNC3(clock_div_1);
#endif

    // Leonardo needs. Without this USB device is not recognized.
    FUNC1();

    FUNC2();

    // for Console_Task
    FUNC0();
    FUNC4(sendchar);
}
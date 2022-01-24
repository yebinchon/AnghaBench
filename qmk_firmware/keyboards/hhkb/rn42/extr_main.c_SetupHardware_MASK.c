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
 int DDRD ; 
 int MCUSR ; 
 int PORTD ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int WDRF ; 
 int /*<<< orphan*/  clock_div_1 ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sendchar_func ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static void FUNC6(void)
{
    /* Disable watchdog if enabled by bootloader/fuses */
    MCUSR &= ~(1 << WDRF);
    FUNC5();

    /* Disable clock division */
    FUNC3(clock_div_1);

    // Leonardo needs. Without this USB device is not recognized.
    FUNC1();

    FUNC2();

    // for Console_Task
    FUNC0();
    FUNC4(sendchar_func);

    // SUART PD0:output, PD1:input
    DDRD |= (1<<0);
    PORTD |= (1<<0);
    DDRD &= ~(1<<1);
    PORTD |= (1<<1);
}
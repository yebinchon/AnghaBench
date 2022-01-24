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
 scalar_t__ DEVICE_STATE_Configured ; 
 int /*<<< orphan*/  LED_TX_INIT ; 
 int /*<<< orphan*/  LED_TX_ON ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ USB_DeviceState ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int debug_enable ; 
 int debug_keyboard ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  lufa_driver ; 
 int /*<<< orphan*/  FUNC7 () ; 

int FUNC8(void)
{
    // LED for debug
    LED_TX_INIT;
    LED_TX_ON;

    debug_enable = true;
    debug_keyboard = true;

    FUNC4(&lufa_driver);
    FUNC5();

    FUNC0();

    /* NOTE: Don't insert time consuming job here.
     * It'll cause unclear initialization failure when DFU reset(worm start).
     */
    FUNC7();

/* Some keyboards bootup quickly and cannot be initialized with this startup wait.*/
    // wait for startup of sendchar routine
    while (USB_DeviceState != DEVICE_STATE_Configured) ;
    if (debug_enable) {
        FUNC2(1000);
    }

    FUNC3("init: done\n");

    for (;;) {
        FUNC6();

#if !defined(INTERRUPT_CONTROL_ENDPOINT)
        // LUFA Task for control request
        FUNC1();
#endif
    }

    return 0;
}
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
 int /*<<< orphan*/  LED_TX_INIT ; 
 int /*<<< orphan*/  LED_TX_ON ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int debug_enable ; 
 int debug_keyboard ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  lufa_driver ; 
 int /*<<< orphan*/  FUNC6 () ; 

int FUNC7(void)
{
    // LED for debug
    LED_TX_INIT;
    LED_TX_ON;

    debug_enable = true;
    debug_keyboard = true;

    FUNC3(&lufa_driver);
    FUNC4();

    FUNC0();

    /* NOTE: Don't insert time consuming job here.
     * It'll cause unclear initialization failure when DFU reset(worm start).
     */
    FUNC6();

/* Some keyboards bootup quickly and cannot be initialized with this startup wait.
    // wait for startup of sendchar routine
    while (USB_DeviceState != DEVICE_STATE_Configured) ;
    if (debug_enable) {
        _delay_ms(1000);
    }
*/

    FUNC2("init: done\n");

    for (;;) {
        FUNC5();

#if !defined(INTERRUPT_CONTROL_ENDPOINT)
        // LUFA Task for control request
        FUNC1();
#endif
    }

    return 0;
}
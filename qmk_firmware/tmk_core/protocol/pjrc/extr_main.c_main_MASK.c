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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ remote_wakeup ; 
 int /*<<< orphan*/  sendchar ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ suspend ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 

int FUNC13(void) {
    // set for 16 MHz clock
    FUNC0(0);

    FUNC3();

    // Initialize the USB, and then wait for the host to set configuration.
    // If the Teensy is powered without a PC connected to the USB port,
    // this will wait forever.
    FUNC11();
    while (!FUNC10()) /* wait */
        ;

    FUNC6(sendchar);

    FUNC2();
    FUNC1(FUNC5());
#ifdef SLEEP_LED_ENABLE
    sleep_led_init();
#endif
    while (1) {
        while (suspend) {
            FUNC8();
            if (remote_wakeup && FUNC9()) {
                FUNC12();
            }
        }

        FUNC4();
    }
}
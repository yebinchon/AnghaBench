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
typedef  int uint8_t ;

/* Variables and functions */
 scalar_t__ DEVICE_STATE_Configured ; 
 scalar_t__ DEVICE_STATE_Suspended ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ USB_DeviceState ; 
 scalar_t__ USB_Device_RemoteWakeupEnabled ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 scalar_t__ FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int) ; 

int FUNC16(void)
{
    FUNC0();
    FUNC11();

    /* wait for USB startup to get ready for debug output */
    uint8_t timeout = 255;  // timeout when USB is not available(Bluetooth)
    while (timeout-- && USB_DeviceState != DEVICE_STATE_Configured) {
        FUNC15(4);
#if defined(INTERRUPT_CONTROL_ENDPOINT)
        ;
#else
        FUNC2();
#endif
    }
    FUNC6("\nUSB init\n");

    FUNC7();
    FUNC10();
    FUNC6("RN-42 init\n");

    /* init modules */
    FUNC3();

#ifdef SLEEP_LED_ENABLE
    sleep_led_init();
#endif

    FUNC6("Keyboard start\n");
    while (1) {
        while (FUNC8() && // RN42 is off
                USB_DeviceState == DEVICE_STATE_Suspended) {
            FUNC6("[s]");
            FUNC5();
            FUNC13();
            FUNC13();
            FUNC13();
            FUNC13();
            FUNC13();
            FUNC13();
            FUNC13();
            if (USB_Device_RemoteWakeupEnabled && FUNC14()) {
                    FUNC1();
            }
        }

        FUNC4();

#if !defined(INTERRUPT_CONTROL_ENDPOINT)
        FUNC2();
#endif

        FUNC9();
    }
}
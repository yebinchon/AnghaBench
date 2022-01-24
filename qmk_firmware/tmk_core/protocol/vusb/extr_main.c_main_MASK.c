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
typedef  int /*<<< orphan*/  uint16_t ;

/* Variables and functions */
 int CLKPR ; 
 int /*<<< orphan*/  UART_BAUD_RATE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ usbConfiguration ; 
 scalar_t__ FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 scalar_t__ usbSofCount ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 

int FUNC14(void) {
    bool suspended = false;
#if USB_COUNT_SOF
    uint16_t last_timer = timer_read();
#endif

#ifdef CLKPR
    // avoid unintentional changes of clock frequency in devices that have a
    // clock prescaler
    CLKPR = 0x80, CLKPR = 0;
#endif
#ifndef NO_UART
    FUNC9(UART_BAUD_RATE);
#endif
    FUNC4();

    FUNC3();
    FUNC1(FUNC12());

    FUNC0("initForUsbConnectivity()\n");
    FUNC2();

    FUNC0("main loop\n");
    while (1) {
#if USB_COUNT_SOF
        if (usbSofCount != 0) {
            suspended   = false;
            usbSofCount = 0;
            last_timer  = timer_read();
        } else {
            // Suspend when no SOF in 3ms-10ms(7.1.7.4 Suspending of USB1.1)
            if (timer_elapsed(last_timer) > 5) {
                suspended = true;
                /*
                                uart_putchar('S');
                                _delay_ms(1);
                                cli();
                                set_sleep_mode(SLEEP_MODE_PWR_DOWN);
                                sleep_enable();
                                sleep_bod_disable();
                                sei();
                                sleep_cpu();
                                sleep_disable();
                                _delay_ms(10);
                                uart_putchar('W');
                */
            }
        }
#endif
        if (!suspended) {
            FUNC11();

            // TODO: configuration process is incosistent. it sometime fails.
            // To prevent failing to configure NOT scan keyboard during configuration
            if (usbConfiguration && FUNC10()) {
                FUNC5();

#if defined(RGBLIGHT_ANIMATIONS) && defined(RGBLIGHT_ENABLE)
                rgblight_task();
#endif
            }
            FUNC13();
        }
    }
}
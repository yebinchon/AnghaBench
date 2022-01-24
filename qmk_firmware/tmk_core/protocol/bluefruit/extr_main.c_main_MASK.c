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
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sendchar ; 
 int /*<<< orphan*/  FUNC9 () ; 

int FUNC10(void) {
    FUNC0(0);

    // DDRD  = _BV(PD5);
    // DDRB  = _BV(PB0);

    // PORTD = _BV(PD5);
    // PORTB = _BV(PB0);

    FUNC8(sendchar);

    // usb_init();
    // _delay_ms(2000);
    // while (!usb_configured()) /* wait */

    FUNC6();

    FUNC3("Initializing keyboard...\n");
    FUNC5();

    // This implementation is pretty simplistic... if the USB connection
    // is not configured, choose the Bluefruit, otherwise use USB
    // Definitely would prefer to have this driven by an input pin and make
    // it switch dynamically - BCG
    // if (!usb_configured()) {

    //     // Send power to Bluefruit... Adafruit says it takes 27 mA, I think
    //     // the pins should provide 40 mA, but just in case I switch the
    //     // Bluefruit using a transistor - BCG
    //     DDRB   = _BV(PB6);
    //     PORTB |= _BV(PB6);

    FUNC3("Setting host driver to bluefruit...\n");
    FUNC4(FUNC2());

    FUNC3("Initializing serial...\n");
    FUNC9();

    // char swpa[] = "+++\r\n";
    // for (int i = 0; i < 5; i++) {
    //     serial_send(swpa[i]);
    // }

    // char ble_enable[] = "AT+BLEKEYBOARDEN=1\r\n";
    // for (int i = 0; i < 20; i++) {
    //     serial_send(ble_enable[i]);
    // }

    // char reset[] = "ATZ\r\n";
    // for (int i = 0; i < 5; i++) {
    //     serial_send(reset[i]);
    // }

    // for (int i = 0; i < 5; i++) {
    //     serial_send(swpa[i]);
    // }

    // wait an extra second for the PC's operating system
    // to load drivers and do whatever it does to actually
    // be ready for input
    FUNC1(1000);
    // PORTD = ~_BV(PD5);
    FUNC3("Starting main loop");
    while (1) {
        FUNC7();
    }

    //     } else {

    //         // I'm not smart enough to get this done with LUFA - BCG
    //         dprintf("Setting host driver to PJRC...\n");
    //         host_set_driver(pjrc_driver());
    // #ifdef SLEEP_LED_ENABLE
    //     sleep_led_init();
    // #endif
    //         // wait an extra second for the PC's operating system
    //         // to load drivers and do whatever it does to actually
    //         // be ready for input
    //         _delay_ms(1000);
    //         PORTB = ~_BV(PB0);
    //         dprintf("Starting main loop");
    //         while (1) {
    //             while (suspend) {
    //                 suspend_power_down();
    //                 if (remote_wakeup && suspend_wakeup_condition()) {
    //                     usb_remote_wakeup();
    //                 }
    //             }
    //             keyboard_task();
    //         }
    //     }
}
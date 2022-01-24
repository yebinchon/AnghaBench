#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  host_driver_t ;
struct TYPE_4__ {scalar_t__ state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ USB_ACTIVE ; 
 TYPE_1__ USB_DRIVER ; 
 scalar_t__ USB_SUSPENDED ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  chibios_driver ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 scalar_t__ FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  sendchar_pf ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 () ; 
 scalar_t__ FUNC22 () ; 
 int /*<<< orphan*/  FUNC23 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC24 () ; 
 int /*<<< orphan*/  FUNC25 () ; 
 int /*<<< orphan*/  FUNC26 () ; 
 int /*<<< orphan*/  FUNC27 () ; 
 int /*<<< orphan*/  FUNC28 (int) ; 

int FUNC29(void) {
    /* ChibiOS/RT init */
    FUNC4();
    FUNC1();

#ifdef STM32_EEPROM_ENABLE
    EEPROM_Init();
#endif

    // TESTING
    // chThdCreateStatic(waThread1, sizeof(waThread1), NORMALPRIO, Thread1, NULL);

    FUNC11();

    /* Init USB */
    FUNC8(&USB_DRIVER);

    /* init printf */
    FUNC6(NULL, sendchar_pf);

#ifdef MIDI_ENABLE
    setup_midi();
#endif

#ifdef SERIAL_LINK_ENABLE
    init_serial_link();
#endif

#ifdef VISUALIZER_ENABLE
    visualizer_init();
#endif

    host_driver_t *driver = NULL;

    /* Wait until the USB or serial link is active */
    while (true) {
#if defined(WAIT_FOR_USB) || defined(SERIAL_LINK_ENABLE)
        if (USB_DRIVER.state == USB_ACTIVE) {
            driver = &chibios_driver;
            break;
        }
#else
        driver = &chibios_driver;
        break;
#endif
#ifdef SERIAL_LINK_ENABLE
        if (is_serial_link_connected()) {
            driver = get_serial_link_driver();
            break;
        }
        serial_link_update();
#endif
        FUNC28(50);
    }

    /* Do need to wait here!
     * Otherwise the next print might start a transfer on console EP
     * before the USB is completely ready, which sometimes causes
     * HardFaults.
     */
    FUNC28(50);

    FUNC14("USB configured.\n");

    /* init TMK modules */
    FUNC10();
    FUNC5(driver);

#ifdef SLEEP_LED_ENABLE
    sleep_led_init();
#endif

    FUNC14("Keyboard start.\n");

    /* Main loop */
    while (true) {
#if !defined(NO_USB_STARTUP_CHECK)
        if (USB_DRIVER.state == USB_SUSPENDED) {
            FUNC14("[s]");
#    ifdef VISUALIZER_ENABLE
            visualizer_suspend();
#    endif
            while (USB_DRIVER.state == USB_SUSPENDED) {
                /* Do this in the suspended state */
#    ifdef SERIAL_LINK_ENABLE
                serial_link_update();
#    endif
                FUNC21();  // on AVR this deep sleeps for 15ms
                /* Remote wakeup */
                if (FUNC22()) {
                    FUNC23(&USB_DRIVER);
                }
            }
            /* Woken up */
            // variables has been already cleared by the wakeup hook
            FUNC17();
#    ifdef MOUSEKEY_ENABLE
            mousekey_send();
#    endif /* MOUSEKEY_ENABLE */

#    ifdef VISUALIZER_ENABLE
            visualizer_resume();
#    endif
        }
#endif

        FUNC12();
#ifdef CONSOLE_ENABLE
        console_task();
#endif
#ifdef VIRTSER_ENABLE
        virtser_task();
#endif
#ifdef RAW_ENABLE
        raw_hid_task();
#endif
#if defined(RGBLIGHT_ANIMATIONS) && defined(RGBLIGHT_ENABLE)
        rgblight_task();
#endif
    }
}
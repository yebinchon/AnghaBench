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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ DEVICE_STATE_Configured ; 
 scalar_t__ DEVICE_STATE_Suspended ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ USB_DeviceState ; 
 scalar_t__ USB_Device_RemoteWakeupEnabled ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  USB_MIDI_Interface ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  cdc_device ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  lufa_driver ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 () ; 
 scalar_t__ FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 () ; 

int FUNC22(void) {
#ifdef MIDI_ENABLE
    setup_midi();
#endif

    FUNC14();
    FUNC7();
    FUNC16();
    FUNC12();

#if defined(MODULE_ADAFRUIT_EZKEY) || defined(MODULE_RN42)
    serial_init();
#endif

    /* wait for USB startup & debug output */

#ifdef WAIT_FOR_USB
    while (USB_DeviceState != DEVICE_STATE_Configured) {
#    if defined(INTERRUPT_CONTROL_ENDPOINT)
        ;
#    else
        USB_USBTask();
#    endif
    }
    print("USB configured.\n");
#else
    FUNC3();
#endif
    /* init modules */
    FUNC6();
    FUNC5(&lufa_driver);
#ifdef SLEEP_LED_ENABLE
    sleep_led_init();
#endif

#ifdef VIRTSER_ENABLE
    virtser_init();
#endif

    FUNC9("Keyboard start.\n");
    while (1) {
#if !defined(NO_USB_STARTUP_CHECK)
        while (USB_DeviceState == DEVICE_STATE_Suspended) {
            FUNC9("[s]");
            FUNC18();
            if (USB_Device_RemoteWakeupEnabled && FUNC19()) {
                FUNC2();
            }
        }
#endif

        FUNC8();

#ifdef MIDI_ENABLE
        MIDI_Device_USBTask(&USB_MIDI_Interface);
#endif

#if defined(RGBLIGHT_ANIMATIONS) && defined(RGBLIGHT_ENABLE)
        rgblight_task();
#endif

#ifdef MODULE_ADAFRUIT_BLE
        adafruit_ble_task();
#endif

#ifdef VIRTSER_ENABLE
        virtser_task();
        CDC_Device_USBTask(&cdc_device);
#endif

#ifdef RAW_ENABLE
        raw_hid_task();
#endif

#if !defined(INTERRUPT_CONTROL_ENDPOINT)
        FUNC3();
#endif
    }
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int usbevent_t ;
typedef  int /*<<< orphan*/  USBDriver ;
struct TYPE_6__ {TYPE_2__* array; } ;
struct TYPE_4__ {int /*<<< orphan*/  int_in; int /*<<< orphan*/  bulk_out; int /*<<< orphan*/  bulk_in; } ;
struct TYPE_5__ {int /*<<< orphan*/  driver; int /*<<< orphan*/  int_ep_config; TYPE_1__ config; int /*<<< orphan*/  out_ep_config; int /*<<< orphan*/  in_ep_config; } ;

/* Variables and functions */
 int /*<<< orphan*/  KEYBOARD_IN_EPNUM ; 
 int /*<<< orphan*/  MOUSE_IN_EPNUM ; 
 int NUM_USB_DRIVERS ; 
 int /*<<< orphan*/  SHARED_IN_EPNUM ; 
#define  USB_EVENT_ADDRESS 134 
#define  USB_EVENT_CONFIGURED 133 
#define  USB_EVENT_RESET 132 
#define  USB_EVENT_STALLED 131 
#define  USB_EVENT_SUSPEND 130 
#define  USB_EVENT_UNCONFIGURED 129 
#define  USB_EVENT_WAKEUP 128 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_3__ drivers ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  kbd_ep_config ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mouse_ep_config ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  shared_ep_config ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC13(USBDriver *usbp, usbevent_t event) {
    switch (event) {
        case USB_EVENT_ADDRESS:
            return;

        case USB_EVENT_CONFIGURED:
            FUNC4();
            /* Enable the endpoints specified into the configuration. */
#ifndef KEYBOARD_SHARED_EP
            FUNC12(usbp, KEYBOARD_IN_EPNUM, &kbd_ep_config);
#endif
#if defined(MOUSE_ENABLE) && !defined(MOUSE_SHARED_EP)
            usbInitEndpointI(usbp, MOUSE_IN_EPNUM, &mouse_ep_config);
#endif
#ifdef SHARED_EP_ENABLE
            usbInitEndpointI(usbp, SHARED_IN_EPNUM, &shared_ep_config);
#endif
            for (int i = 0; i < NUM_USB_DRIVERS; i++) {
                FUNC12(usbp, drivers.array[i].config.bulk_in, &drivers.array[i].in_ep_config);
                FUNC12(usbp, drivers.array[i].config.bulk_out, &drivers.array[i].out_ep_config);
                if (drivers.array[i].config.int_in) {
                    FUNC12(usbp, drivers.array[i].config.int_in, &drivers.array[i].int_ep_config);
                }
                FUNC6(&drivers.array[i].driver);
            }
            FUNC5();
            return;
        case USB_EVENT_SUSPEND:
#ifdef SLEEP_LED_ENABLE
            sleep_led_enable();
#endif /* SLEEP_LED_ENABLE */
            /* Falls into.*/
        case USB_EVENT_UNCONFIGURED:
            /* Falls into.*/
        case USB_EVENT_RESET:
            for (int i = 0; i < NUM_USB_DRIVERS; i++) {
                FUNC0();
                /* Disconnection event on suspend.*/
                FUNC7(&drivers.array[i].driver);
                FUNC1();
            }
            return;

        case USB_EVENT_WAKEUP:
            // TODO: from ISR! print("[W]");
            for (int i = 0; i < NUM_USB_DRIVERS; i++) {
                FUNC0();
                /* Disconnection event on suspend.*/
                FUNC8(&drivers.array[i].driver);
                FUNC1();
            }
            FUNC11();
#ifdef SLEEP_LED_ENABLE
            sleep_led_disable();
            // NOTE: converters may not accept this
            led_set(host_keyboard_leds());
#endif /* SLEEP_LED_ENABLE */
            return;

        case USB_EVENT_STALLED:
            return;
    }
}
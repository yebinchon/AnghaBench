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
typedef  int /*<<< orphan*/  uint8_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int PORT_EXPANDER_ADDRESS ; 
 int /*<<< orphan*/  USB_LED_CAPS_LOCK ; 
 int /*<<< orphan*/  FUNC1 (int,int,int*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int send_data ; 

void FUNC3(uint8_t usb_led) {
    // Bit 3 is Green LED, bit 4 is Red LED.
    if (FUNC0(usb_led, USB_LED_CAPS_LOCK)) {
        send_data = 0x18;
    } else {
        send_data = 0x10;
    }
    FUNC1((PORT_EXPANDER_ADDRESS << 1), 0x09, &send_data, 1, 20);

    FUNC2(usb_led);
}
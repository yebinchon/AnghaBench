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
 int /*<<< orphan*/  GPIOB ; 
 int USB_LED_CAPS_LOCK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 

void FUNC3(uint8_t usb_led) {
    FUNC2("led_set_kb(%d)\n", usb_led);
    if (usb_led & (1<<USB_LED_CAPS_LOCK)) {
        // Turn capslock on
        FUNC1(GPIOB, 7);
    } else {
        // Turn capslock off
        FUNC0(GPIOB, 7);
    }
}
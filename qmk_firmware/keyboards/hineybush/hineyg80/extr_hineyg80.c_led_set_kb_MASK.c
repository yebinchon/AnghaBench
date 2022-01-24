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
 int /*<<< orphan*/  B5 ; 
 int /*<<< orphan*/  B6 ; 
 int /*<<< orphan*/  C6 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  USB_LED_CAPS_LOCK ; 
 int /*<<< orphan*/  USB_LED_NUM_LOCK ; 
 int /*<<< orphan*/  USB_LED_SCROLL_LOCK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(uint8_t usb_led) {
	// put your keyboard LED indicator (ex: Caps Lock LED) toggling code here
	if (FUNC0(usb_led, USB_LED_NUM_LOCK)) {
        // Turn numlock on
		FUNC2(C6);
    } else {
        // Turn numlock off
	    FUNC3(C6);
    }
	if (FUNC0(usb_led, USB_LED_CAPS_LOCK)) {
        // Turn capslock on
		FUNC2(B6);
    } else {
        // Turn capslock off
		FUNC3(B6);
    }
	if (FUNC0(usb_led, USB_LED_SCROLL_LOCK)) {
        // Turn scrolllock on
	    FUNC2(B5);
    } else {
        // Turn scrolllock off
		FUNC3(B5);
    }
	FUNC1(usb_led);
}
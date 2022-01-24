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
 int /*<<< orphan*/  USB_LED_CAPS_LOCK ; 
 int /*<<< orphan*/  USB_LED_COMPOSE ; 
 int /*<<< orphan*/  USB_LED_KANA ; 
 int /*<<< orphan*/  USB_LED_NUM_LOCK ; 
 int /*<<< orphan*/  USB_LED_SCROLL_LOCK ; 

void FUNC1(uint8_t usb_led) {

    if (FUNC0(usb_led, USB_LED_NUM_LOCK)) {

    } else {

    }

    if (FUNC0(usb_led, USB_LED_CAPS_LOCK)) {

    } else {

    }

    if (FUNC0(usb_led, USB_LED_SCROLL_LOCK)) {

    } else {

    }

    if (FUNC0(usb_led, USB_LED_COMPOSE)) {

    } else {

    }

    if (FUNC0(usb_led, USB_LED_KANA)) {

    } else {

    }

}
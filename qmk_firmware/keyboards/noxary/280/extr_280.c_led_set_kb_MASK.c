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
 int /*<<< orphan*/  D0 ; 
 int /*<<< orphan*/  D5 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  USB_LED_CAPS_LOCK ; 
 int /*<<< orphan*/  USB_LED_SCROLL_LOCK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(uint8_t usb_led) {

    if (FUNC0(usb_led, USB_LED_CAPS_LOCK)) {
      FUNC3(D5);
    } else {
      FUNC2(D5);
    }

    if (FUNC0(usb_led, USB_LED_SCROLL_LOCK)) {
      FUNC3(D0);
    } else {
      FUNC2(D0);
    }
     
    FUNC1(usb_led);
}
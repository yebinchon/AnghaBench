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
 int USB_LED_CAPS_LOCK ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void FUNC4(uint8_t usb_led) {
    // Turn LEDs On/Off for Caps Lock
    if (FUNC0() & (1 << USB_LED_CAPS_LOCK)) {
        FUNC2();
        FUNC3(0, 0, 80);
    } else {
        FUNC3(0, 0, 80);
        FUNC1();
    }
}
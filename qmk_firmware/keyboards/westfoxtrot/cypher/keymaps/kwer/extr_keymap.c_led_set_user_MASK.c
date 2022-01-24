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
 int /*<<< orphan*/  F1 ; 
 int /*<<< orphan*/  F4 ; 
 int /*<<< orphan*/  F5 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  USB_LED_NUM_LOCK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(uint8_t usb_led) {
  // Insert custom handling for CAPS_LOCK, NUM_LOCK, SCROLL_LOCK here
      if (FUNC0(usb_led, USB_LED_NUM_LOCK)) {
        FUNC1(F4);
        FUNC1(F1);
        FUNC1(F5);
    } else {
        FUNC2(F4);
        FUNC2(F1);
        FUNC2(F5);
    }
}
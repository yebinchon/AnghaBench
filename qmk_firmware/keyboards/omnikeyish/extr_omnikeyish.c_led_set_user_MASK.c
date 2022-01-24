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
 int /*<<< orphan*/  CAPSLOCKLEDPIN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NUMLOCKLEDPIN ; 
 int /*<<< orphan*/  SCROLLLOCKLEDPIN ; 
 int /*<<< orphan*/  USB_LED_CAPS_LOCK ; 
 int /*<<< orphan*/  USB_LED_NUM_LOCK ; 
 int /*<<< orphan*/  USB_LED_SCROLL_LOCK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(uint8_t usb_led) {
  if (FUNC0(usb_led, USB_LED_NUM_LOCK)) {
    FUNC1(NUMLOCKLEDPIN);
  } else {
    FUNC2(NUMLOCKLEDPIN);
  }

  if (FUNC0(usb_led, USB_LED_CAPS_LOCK)) {
    FUNC1(CAPSLOCKLEDPIN);
  } else {
    FUNC2(CAPSLOCKLEDPIN);
  }

  if (FUNC0(usb_led, USB_LED_SCROLL_LOCK)) {
    FUNC1(SCROLLLOCKLEDPIN);
  } else {
    FUNC2(SCROLLLOCKLEDPIN);
  }
}
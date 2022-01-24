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
 int USB_LED_CAPS_LOCK ; 
 int USB_LED_SCROLL_LOCK ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

void FUNC4(uint8_t usb_led) {
  if (usb_led & (1 << USB_LED_CAPS_LOCK)) {
    FUNC1();
  } else {
    FUNC0();
  }

  if (usb_led & (1 << USB_LED_SCROLL_LOCK)) {
    FUNC3();
    } else {
    FUNC2();
  }
}
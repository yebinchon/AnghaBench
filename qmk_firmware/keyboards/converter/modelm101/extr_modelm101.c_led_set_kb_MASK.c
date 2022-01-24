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
 int /*<<< orphan*/  B4 ; 
 int /*<<< orphan*/  B5 ; 
 int /*<<< orphan*/  B6 ; 
 int USB_LED_CAPS_LOCK ; 
 int USB_LED_NUM_LOCK ; 
 int USB_LED_SCROLL_LOCK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(uint8_t usb_led) {
  if (usb_led & (1<<USB_LED_NUM_LOCK)) {
    FUNC2(B4);
  } else {
    FUNC1(B4);
  }
  if (usb_led & (1<<USB_LED_CAPS_LOCK)) {
    FUNC2(B6);
  } else {
    FUNC1(B6);
  }
  if (usb_led & (1<<USB_LED_SCROLL_LOCK)) {
    FUNC2(B5);
  } else {
    FUNC1(B5);
  }

  FUNC0(usb_led);
}
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
 int USB_LED_NUM_LOCK ; 
 int numlock_on ; 

void FUNC0(uint8_t usb_led) {
  if (usb_led & (1<<USB_LED_NUM_LOCK)) {
    numlock_on = true;
  }
  else {
    numlock_on = false;
  }
}
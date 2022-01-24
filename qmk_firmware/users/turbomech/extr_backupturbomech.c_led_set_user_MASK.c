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
 int is_capslocked ; 

void FUNC0(uint8_t usb_led) {
  if (usb_led & (1<<USB_LED_CAPS_LOCK)) {
    is_capslocked = true;
   //     DDRB |= (1 << 2); PORTB &= ~(1 << 2);
  } else {
    is_capslocked = false;
  //  DDRB &= ~(1 << 2); PORTB &= ~(1 << 2);
  }
}
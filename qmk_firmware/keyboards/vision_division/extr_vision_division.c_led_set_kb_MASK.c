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
 int DDRD ; 
 int PORTD ; 
 int USB_LED_CAPS_LOCK ; 
 int USB_LED_NUM_LOCK ; 
 int USB_LED_SCROLL_LOCK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 

void FUNC1(uint8_t usb_led) {
	// put your keyboard LED indicator (ex: Caps Lock LED) toggling code here

  if (usb_led & (1 << USB_LED_CAPS_LOCK))
  {
    // HI
    DDRD  |= (1<<4);
    PORTD |= (1<<4);
  }
  else
  {
    // Hi-Z
    DDRD  &= ~(1<<4);
    PORTD &= ~(1<<4);
  }

  if (usb_led & (1 << USB_LED_NUM_LOCK))
  {
    // HI
    DDRD  |= (1<<5);
    PORTD |= (1<<5);
  }
  else
  {
    // Hi-Z
    DDRD  &= ~(1<<5);
    PORTD &= ~(1<<5);
  }

  if (usb_led & (1 << USB_LED_SCROLL_LOCK))
  {
    // HI
    DDRD  |= (1<<6);
    PORTD |= (1<<6);
  }
  else
  {
    // Hi-Z
    DDRD  &= ~(1<<6);
    PORTD &= ~(1<<6);
  }

	FUNC0(usb_led);
}
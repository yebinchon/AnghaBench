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
 int PORTB ; 
 int USB_LED_CAPS_LOCK ; 
 int USB_LED_NUM_LOCK ; 
 int USB_LED_SCROLL_LOCK ; 
 int backlight_layer_state ; 
 int backlight_os_state ; 
 int /*<<< orphan*/  FUNC0 (int*) ; 

void FUNC1(uint8_t usb_led) {
    bool status[7] = {
    backlight_os_state & (1<<USB_LED_CAPS_LOCK),
    backlight_os_state & (1<<USB_LED_SCROLL_LOCK),
    backlight_os_state & (1<<USB_LED_NUM_LOCK),
    backlight_layer_state & (1<<1),
    backlight_layer_state & (1<<2),
    backlight_layer_state & (1<<3),
    backlight_layer_state & (1<<4)
  };
  FUNC0(status);
  backlight_os_state & (1<<USB_LED_CAPS_LOCK) ? (PORTB &= ~0b00000001) : (PORTB |= 0b00000001);
  backlight_os_state & (1<<USB_LED_SCROLL_LOCK) ? (PORTB &= ~0b00010000) : (PORTB |= 0b00010000);
}
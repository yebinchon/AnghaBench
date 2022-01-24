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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

void FUNC1(uint8_t usb_led) {
	// put your keyboard LED indicator (ex: Caps Lock LED) toggling code here
	

  //  if (usb_led & (1<<USB_LED_CAPS_LOCK)) {
	//	gh60_caps_led_on();
	//	} else {
	//	gh60_caps_led_off(); 
  //  }
	
    // if (usb_led & (1<<USB_LED_NUM_LOCK)) {
		// gh60_esc_led_on();
		// } else {
		// gh60_esc_led_off(); 
    // }
	
    // if (usb_led & (1<<USB_LED_SCROLL_LOCK)) {
		// gh60_fn_led_on();
		// } else {
		// gh60_fn_led_off(); 	
    // }

	FUNC0(usb_led);	
}
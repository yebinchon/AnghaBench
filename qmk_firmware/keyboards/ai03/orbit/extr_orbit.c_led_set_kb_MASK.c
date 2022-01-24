#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_2__ {void* slock_led; void* clock_led; void* nlock_led; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  USB_LED_CAPS_LOCK ; 
 int /*<<< orphan*/  USB_LED_NUM_LOCK ; 
 int /*<<< orphan*/  USB_LED_SCROLL_LOCK ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,void*) ; 
 TYPE_1__ serial_m2s_buffer ; 

void FUNC4(uint8_t usb_led) {
	// put your keyboard LED indicator (ex: Caps Lock LED) toggling code here
	
	if (FUNC1()) {
	
		serial_m2s_buffer.nlock_led = FUNC0(usb_led, USB_LED_NUM_LOCK);
		serial_m2s_buffer.clock_led = FUNC0(usb_led, USB_LED_CAPS_LOCK);
		serial_m2s_buffer.slock_led = FUNC0(usb_led, USB_LED_SCROLL_LOCK);

		FUNC3(3, FUNC0(usb_led, USB_LED_NUM_LOCK));
		FUNC3(4, FUNC0(usb_led, USB_LED_CAPS_LOCK));
		FUNC3(5, FUNC0(usb_led, USB_LED_SCROLL_LOCK));
		
	}

	FUNC2(usb_led);
}
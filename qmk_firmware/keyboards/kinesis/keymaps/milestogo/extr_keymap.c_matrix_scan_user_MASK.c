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
typedef  int int8_t ;

/* Variables and functions */
 int USB_LED_CAPS_LOCK ; 
 int USB_LED_SCROLL_LOCK ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  layer_state ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

void FUNC6(void) {

#ifdef ALVICSTEP_CONFIG_H
 int8_t layer = biton32(layer_state);

        switch (layer) {
        case 1:
                if (!(host_keyboard_leds() & (1 << USB_LED_CAPS_LOCK))) {
                        all_led_off();
                        caps_lock_led_on();
                }
                break;

        case 2:
                if (!(host_keyboard_leds() & (1 << USB_LED_SCROLL_LOCK))) {
                        all_led_off();
                        scroll_lock_led_on();
                }
        case 0:
                all_led_off();
                num_lock_led_on();
                break;
        default:
                break;
        }
#endif

}
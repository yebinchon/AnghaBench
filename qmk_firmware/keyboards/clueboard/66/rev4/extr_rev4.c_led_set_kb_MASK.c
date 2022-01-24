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
 int /*<<< orphan*/  GPIOA ; 
 int /*<<< orphan*/  GPIOB ; 
 int USB_LED_CAPS_LOCK ; 
 int USB_LED_NUM_LOCK ; 
 int USB_LED_SCROLL_LOCK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

void FUNC2(uint8_t usb_led) {
    if (usb_led & (1<<USB_LED_NUM_LOCK)) {
        FUNC1(GPIOB, 13);    // LED1
    } else {
        FUNC0(GPIOB, 13);  // LED1
    }

    if (usb_led & (1<<USB_LED_CAPS_LOCK)) {
        FUNC1(GPIOA, 0);     // Capslock LED
        FUNC1(GPIOB, 14);    // LED2
    } else {
        FUNC0(GPIOA, 0);   // Capslock LED
        FUNC0(GPIOB, 14);  // LED2
    }

    if (usb_led & (1<<USB_LED_SCROLL_LOCK)) {
        FUNC1(GPIOA, 8);     // LED3
    } else {
        FUNC0(GPIOA, 8);   // LED3
    }
}
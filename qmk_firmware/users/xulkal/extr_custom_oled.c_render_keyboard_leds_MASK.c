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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  USB_LED_CAPS_LOCK ; 
 int /*<<< orphan*/  USB_LED_NUM_LOCK ; 
 int /*<<< orphan*/  USB_LED_SCROLL_LOCK ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(void)
{
    // Host Keyboard LED Status
    uint8_t led_state = FUNC2();
#ifdef OLED_90ROTATION
    oled_write_P(IS_LED_ON(led_state, USB_LED_NUM_LOCK) ? PSTR("NUMLK") : PSTR("     "), false);
    oled_write_P(IS_LED_ON(led_state, USB_LED_CAPS_LOCK) ? PSTR("CAPLK") : PSTR("     "), false);
    oled_write_P(IS_LED_ON(led_state, USB_LED_SCROLL_LOCK) ? PSTR("SCRLK") : PSTR("     "), false);
#else
    FUNC3(FUNC0(led_state, USB_LED_NUM_LOCK) ? FUNC1("NUM  ") : FUNC1("     "), false);
    FUNC3(FUNC0(led_state, USB_LED_CAPS_LOCK) ? FUNC1("CAPS ") : FUNC1("     "), false);
    FUNC3(FUNC0(led_state, USB_LED_SCROLL_LOCK) ? FUNC1("SCRL") : FUNC1("    "), false);
#endif
}
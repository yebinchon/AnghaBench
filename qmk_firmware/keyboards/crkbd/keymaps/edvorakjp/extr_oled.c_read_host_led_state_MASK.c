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

/* Variables and functions */
 int USB_LED_CAPS_LOCK ; 
 int USB_LED_NUM_LOCK ; 
 int USB_LED_SCROLL_LOCK ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 

const char *FUNC3(void) {
  static char led_str[24];
  FUNC2(led_str, (FUNC0() & (1<<USB_LED_NUM_LOCK)) ? "NMLK" : "    ");
  FUNC1(led_str, (FUNC0() & (1<<USB_LED_CAPS_LOCK)) ? " CAPS" : "    ");
  FUNC1(led_str, (FUNC0() & (1<<USB_LED_SCROLL_LOCK)) ? " SCLK" : "     ");
  return led_str;
}
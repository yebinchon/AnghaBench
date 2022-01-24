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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SYSLEDS ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int sys_led_mask_caps_lock ; 
 int sys_led_mask_num_lock ; 
 int sys_led_mask_scroll_lock ; 
 int sys_led_state ; 

void FUNC7(uint8_t usb_led) {
  sys_led_state = usb_led;
  if (FUNC0(SYSLEDS)) {
    if (sys_led_state & sys_led_mask_caps_lock) {
      FUNC2();
    } else {
      FUNC1();
    }
    if (sys_led_state & sys_led_mask_num_lock) {
      FUNC4();
    } else {
      FUNC3();
    }
    if (sys_led_state & sys_led_mask_scroll_lock) {
      FUNC6();
    } else {
      FUNC5();
    }
  }
}
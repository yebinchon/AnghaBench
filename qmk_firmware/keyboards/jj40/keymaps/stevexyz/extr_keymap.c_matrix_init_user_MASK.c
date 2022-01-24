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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int USB_LED_NUM_LOCK ; 
 int /*<<< orphan*/  X_NUMLOCK ; 
 int FUNC2 () ; 

void FUNC3(void) {
  // set num lock on at start independently of state (for numonly layer to work)
  if (!(FUNC2() & (1<<USB_LED_NUM_LOCK))) {
      FUNC0(FUNC1(X_NUMLOCK)); //register_code(KC_NUMLOCK); unregister_code(KC_NUMLOCK);
  }
}
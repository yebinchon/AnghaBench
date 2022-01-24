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
 int /*<<< orphan*/  RGBLIGHT_MODE_STATIC_LIGHT ; 
 scalar_t__ cursor_pos ; 
 int /*<<< orphan*/  last_timer ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  reset_timer ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 

void FUNC3(void) {
  // reset the bar and animation
  FUNC1(RGBLIGHT_MODE_STATIC_LIGHT);
  cursor_pos = 0;
  FUNC0();
  reset_timer = last_timer = FUNC2();
}
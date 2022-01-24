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
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ interval_time ; 
 int /*<<< orphan*/  last_timer ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ reset_time ; 
 int /*<<< orphan*/  reset_timer ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int timer_pos ; 
 int /*<<< orphan*/  FUNC3 () ; 

void FUNC4(void) {
  if (FUNC2(reset_timer) > reset_time) {
      FUNC1();
      reset_timer = FUNC3();
      return;
  }
  if (FUNC2(last_timer) < interval_time) {
    return;
  }
  last_timer += interval_time;
  timer_pos += 4;
  if (timer_pos >= 255) {
    timer_pos = 0;
    last_timer = FUNC3();
  }
  FUNC0(timer_pos);
}
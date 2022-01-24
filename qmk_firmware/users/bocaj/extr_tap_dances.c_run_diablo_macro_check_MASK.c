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
 scalar_t__ FUNC0 (int) ; 
 scalar_t__* diablo_key_time ; 
 int /*<<< orphan*/ * diablo_timer ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 

void FUNC3(void) {
  uint8_t dtime;
  for (dtime = 0; dtime < 4; dtime++) {
    if (FUNC0(dtime) && diablo_key_time[dtime]) {
      diablo_timer[dtime] = FUNC2();
      FUNC1(dtime);
    }
  }
}
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
 int /*<<< orphan*/  BREATHING_NO_HALT ; 
 scalar_t__ breathing_counter ; 
 int /*<<< orphan*/  breathing_halt ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

void FUNC2(void)
{
  FUNC1("breathing_enable()\n");
  breathing_counter = 0;
  breathing_halt = BREATHING_NO_HALT;
  FUNC0();
}
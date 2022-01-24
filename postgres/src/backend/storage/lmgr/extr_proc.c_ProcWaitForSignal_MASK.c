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
typedef  int /*<<< orphan*/  uint32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  MyLatch ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int WL_EXIT_ON_PM_DEATH ; 
 int WL_LATCH_SET ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC3(uint32 wait_event_info)
{
	(void) FUNC2(MyLatch, WL_LATCH_SET | WL_EXIT_ON_PM_DEATH, 0,
					 wait_event_info);
	FUNC1(MyLatch);
	FUNC0();
}
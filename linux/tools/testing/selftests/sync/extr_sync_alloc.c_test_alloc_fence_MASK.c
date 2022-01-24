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
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int FUNC1 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (int) ; 

int FUNC7(void)
{
	int timeline, fence, valid;

	timeline = FUNC4();
	valid = FUNC6(timeline);
	FUNC0(valid, "Failure allocating timeline\n");

	fence = FUNC1(timeline, "allocFence", 1);
	valid = FUNC3(fence);
	FUNC0(valid, "Failure allocating fence\n");

	FUNC2(fence);
	FUNC5(timeline);
	return 0;
}
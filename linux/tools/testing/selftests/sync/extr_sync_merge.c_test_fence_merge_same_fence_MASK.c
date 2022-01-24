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
 int /*<<< orphan*/  FENCE_STATUS_SIGNALED ; 
 int FUNC1 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 
 int FUNC7 (int) ; 
 int FUNC8 (int,int /*<<< orphan*/ ) ; 
 int FUNC9 (char*,int,int) ; 

int FUNC10(void)
{
	int fence, valid, merged;
	int timeline = FUNC4();

	valid = FUNC7(timeline);
	FUNC0(valid, "Failure allocating timeline\n");

	fence = FUNC1(timeline, "allocFence", 5);
	valid = FUNC3(fence);
	FUNC0(valid, "Failure allocating fence\n");

	merged = FUNC9("mergeFence", fence, fence);
	valid = FUNC3(fence);
	FUNC0(valid, "Failure merging fence\n");

	FUNC0(FUNC8(merged, FENCE_STATUS_SIGNALED) == 0,
	       "fence signaled too early!\n");

	FUNC6(timeline, 5);
	FUNC0(FUNC8(merged, FENCE_STATUS_SIGNALED) == 1,
	       "fence did not signal!\n");

	FUNC2(merged);
	FUNC2(fence);
	FUNC5(timeline);

	return 0;
}
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
 int /*<<< orphan*/  FENCE_STATUS_ACTIVE ; 
 int /*<<< orphan*/  FENCE_STATUS_SIGNALED ; 
 int FUNC1 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (int,int) ; 
 int FUNC7 (int,int /*<<< orphan*/ ) ; 
 int FUNC8 (char*,int,int) ; 
 int FUNC9 (int,int) ; 

int FUNC10(void)
{
	int timelineA, timelineB, timelineC;
	int fenceA, fenceB, fenceC, merged;
	int valid, active, signaled, ret;

	timelineA = FUNC4();
	timelineB = FUNC4();
	timelineC = FUNC4();

	fenceA = FUNC1(timelineA, "fenceA", 5);
	fenceB = FUNC1(timelineB, "fenceB", 5);
	fenceC = FUNC1(timelineC, "fenceC", 5);

	merged = FUNC8("mergeFence", fenceB, fenceA);
	merged = FUNC8("mergeFence", fenceC, merged);

	valid = FUNC3(merged);
	FUNC0(valid, "Failure merging fence from various timelines\n");

	/* Confirm fence isn't signaled */
	active = FUNC7(merged, FENCE_STATUS_ACTIVE);
	FUNC0(active == 3, "Fence signaled too early!\n");

	ret = FUNC9(merged, 0);
	FUNC0(ret == 0,
	       "Failure waiting on fence until timeout\n");

	ret = FUNC6(timelineA, 5);
	active = FUNC7(merged, FENCE_STATUS_ACTIVE);
	signaled = FUNC7(merged, FENCE_STATUS_SIGNALED);
	FUNC0(active == 2 && signaled == 1,
	       "Fence did not signal properly!\n");

	ret = FUNC6(timelineB, 5);
	active = FUNC7(merged, FENCE_STATUS_ACTIVE);
	signaled = FUNC7(merged, FENCE_STATUS_SIGNALED);
	FUNC0(active == 1 && signaled == 2,
	       "Fence did not signal properly!\n");

	ret = FUNC6(timelineC, 5);
	active = FUNC7(merged, FENCE_STATUS_ACTIVE);
	signaled = FUNC7(merged, FENCE_STATUS_SIGNALED);
	FUNC0(active == 0 && signaled == 3,
	       "Fence did not signal properly!\n");

	/* confirm you can successfully wait */
	ret = FUNC9(merged, 100);
	FUNC0(ret > 0, "Failure waiting on signaled fence\n");

	FUNC2(merged);
	FUNC2(fenceC);
	FUNC2(fenceB);
	FUNC2(fenceA);
	FUNC5(timelineC);
	FUNC5(timelineB);
	FUNC5(timelineA);

	return 0;
}
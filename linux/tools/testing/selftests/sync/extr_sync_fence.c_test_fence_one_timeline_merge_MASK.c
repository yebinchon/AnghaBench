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
 int /*<<< orphan*/  FUNC6 (int,int) ; 
 int FUNC7 (int,int /*<<< orphan*/ ) ; 
 int FUNC8 (char*,int,int) ; 

int FUNC9(void)
{
	int a, b, c, d, valid;
	int timeline = FUNC4();

	/* create fence a,b,c and then merge them all into fence d */
	a = FUNC1(timeline, "allocFence", 1);
	b = FUNC1(timeline, "allocFence", 2);
	c = FUNC1(timeline, "allocFence", 3);

	valid = FUNC3(a) &&
		FUNC3(b) &&
		FUNC3(c);
	FUNC0(valid, "Failure allocating fences\n");

	d = FUNC8("mergeFence", b, a);
	d = FUNC8("mergeFence", c, d);
	valid = FUNC3(d);
	FUNC0(valid, "Failure merging fences\n");

	/* confirm all fences have one active point (even d) */
	FUNC0(FUNC7(a, FENCE_STATUS_ACTIVE) == 1,
	       "a has too many active fences!\n");
	FUNC0(FUNC7(a, FENCE_STATUS_ACTIVE) == 1,
	       "b has too many active fences!\n");
	FUNC0(FUNC7(a, FENCE_STATUS_ACTIVE) == 1,
	       "c has too many active fences!\n");
	FUNC0(FUNC7(a, FENCE_STATUS_ACTIVE) == 1,
	       "d has too many active fences!\n");

	/* confirm that d is not signaled until the max of a,b,c */
	FUNC6(timeline, 1);
	FUNC0(FUNC7(a, FENCE_STATUS_SIGNALED) == 1,
	       "a did not signal!\n");
	FUNC0(FUNC7(d, FENCE_STATUS_ACTIVE) == 1,
	       "d signaled too early!\n");

	FUNC6(timeline, 1);
	FUNC0(FUNC7(b, FENCE_STATUS_SIGNALED) == 1,
	       "b did not signal!\n");
	FUNC0(FUNC7(d, FENCE_STATUS_ACTIVE) == 1,
	       "d signaled too early!\n");

	FUNC6(timeline, 1);
	FUNC0(FUNC7(c, FENCE_STATUS_SIGNALED) == 1,
	       "c did not signal!\n");
	FUNC0(FUNC7(d, FENCE_STATUS_ACTIVE) == 0 &&
	       FUNC7(d, FENCE_STATUS_SIGNALED) == 1,
	       "d did not signal!\n");

	FUNC2(d);
	FUNC2(c);
	FUNC2(b);
	FUNC2(a);
	FUNC5(timeline);
	return 0;
}
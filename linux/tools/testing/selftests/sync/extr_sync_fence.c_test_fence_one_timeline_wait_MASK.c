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
 int FUNC6 (int,int) ; 
 int FUNC7 (int) ; 
 int FUNC8 (int,int /*<<< orphan*/ ) ; 

int FUNC9(void)
{
	int fence, valid, ret;
	int timeline = FUNC4();

	valid = FUNC7(timeline);
	FUNC0(valid, "Failure allocating timeline\n");

	fence = FUNC1(timeline, "allocFence", 5);
	valid = FUNC3(fence);
	FUNC0(valid, "Failure allocating fence\n");

	/* Wait on fence until timeout */
	ret = FUNC8(fence, 0);
	FUNC0(ret == 0, "Failure waiting on fence until timeout\n");

	/* Advance timeline from 0 -> 1 */
	ret = FUNC6(timeline, 1);
	FUNC0(ret == 0, "Failure advancing timeline\n");

	/* Wait on fence until timeout */
	ret = FUNC8(fence, 0);
	FUNC0(ret == 0, "Failure waiting on fence until timeout\n");

	/* Signal the fence */
	ret = FUNC6(timeline, 4);
	FUNC0(ret == 0, "Failure signaling the fence\n");

	/* Wait successfully */
	ret = FUNC8(fence, 0);
	FUNC0(ret > 0, "Failure waiting on fence\n");

	/* Go even further, and confirm wait still succeeds */
	ret = FUNC6(timeline, 10);
	FUNC0(ret == 0, "Failure going further\n");
	ret = FUNC8(fence, 0);
	FUNC0(ret > 0, "Failure waiting ahead\n");

	FUNC2(fence);
	FUNC5(timeline);

	return 0;
}
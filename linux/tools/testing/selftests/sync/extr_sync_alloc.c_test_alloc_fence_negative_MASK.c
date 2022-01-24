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
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

int FUNC5(void)
{
	int fence, timeline;

	timeline = FUNC3();
	FUNC0(timeline > 0, "Failure allocating timeline\n");

	fence = FUNC1(-1, "fence", 1);
	FUNC0(fence < 0, "Success allocating negative fence\n");

	FUNC2(fence);
	FUNC4(timeline);
	return 0;
}
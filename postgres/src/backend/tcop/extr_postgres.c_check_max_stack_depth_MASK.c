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
typedef  int /*<<< orphan*/  GucSource ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,long) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 long STACK_DEPTH_SLOP ; 
 long FUNC2 () ; 

bool
FUNC3(int *newval, void **extra, GucSource source)
{
	long		newval_bytes = *newval * 1024L;
	long		stack_rlimit = FUNC2();

	if (stack_rlimit > 0 && newval_bytes > stack_rlimit - STACK_DEPTH_SLOP)
	{
		FUNC0("\"max_stack_depth\" must not exceed %ldkB.",
							(stack_rlimit - STACK_DEPTH_SLOP) / 1024L);
		FUNC1("Increase the platform's stack depth limit via \"ulimit -s\" or local equivalent.");
		return false;
	}
	return true;
}
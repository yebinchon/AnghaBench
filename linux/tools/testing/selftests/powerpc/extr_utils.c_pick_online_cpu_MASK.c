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
typedef  int /*<<< orphan*/  mask ;
typedef  int /*<<< orphan*/  cpu_set_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ *) ; 
 int CPU_SETSIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

int FUNC5(void)
{
	cpu_set_t mask;
	int cpu;

	FUNC1(&mask);

	if (FUNC4(0, sizeof(mask), &mask)) {
		FUNC2("sched_getaffinity");
		return -1;
	}

	/* We prefer a primary thread, but skip 0 */
	for (cpu = 8; cpu < CPU_SETSIZE; cpu += 8)
		if (FUNC0(cpu, &mask))
			return cpu;

	/* Search for anything, but in reverse */
	for (cpu = CPU_SETSIZE - 1; cpu >= 0; cpu--)
		if (FUNC0(cpu, &mask))
			return cpu;

	FUNC3("No cpus in affinity mask?!\n");
	return -1;
}
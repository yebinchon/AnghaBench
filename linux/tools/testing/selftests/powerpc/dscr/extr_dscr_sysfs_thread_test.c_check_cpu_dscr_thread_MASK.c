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
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int CPU_SETSIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (unsigned long) ; 

__attribute__((used)) static int FUNC4(unsigned long val)
{
	cpu_set_t mask;
	int cpu;

	for (cpu = 0; cpu < CPU_SETSIZE; cpu++) {
		FUNC1(&mask);
		FUNC0(cpu, &mask);
		if (FUNC2(0, sizeof(mask), &mask))
			continue;

		if (FUNC3(val))
			return 1;
	}
	return 0;

}
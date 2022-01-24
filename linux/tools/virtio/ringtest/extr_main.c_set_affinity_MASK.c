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
typedef  int /*<<< orphan*/  pthread_t ;
typedef  int /*<<< orphan*/  cpu_set_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (long,int /*<<< orphan*/ *) ; 
 long CPU_SETSIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 long FUNC5 (char const*,char**,int /*<<< orphan*/ ) ; 

void FUNC6(const char *arg)
{
	cpu_set_t cpuset;
	int ret;
	pthread_t self;
	long int cpu;
	char *endptr;

	if (!arg)
		return;

	cpu = FUNC5(arg, &endptr, 0);
	FUNC2(!*endptr);

	FUNC2(cpu >= 0 && cpu < CPU_SETSIZE);

	self = FUNC3();
	FUNC1(&cpuset);
	FUNC0(cpu, &cpuset);

	ret = FUNC4(self, sizeof(cpu_set_t), &cpuset);
	FUNC2(!ret);
}
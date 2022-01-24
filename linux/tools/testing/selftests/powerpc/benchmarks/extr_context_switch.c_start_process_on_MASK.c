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
typedef  int /*<<< orphan*/  cpuset ;
typedef  int /*<<< orphan*/  cpu_set_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(void *(*fn)(void *), void *arg, unsigned long cpu)
{
	int pid;
	cpu_set_t cpuset;

	pid = FUNC3();
	if (pid == -1) {
		FUNC4("fork");
		FUNC2(1);
	}

	if (pid)
		return;

	FUNC1(&cpuset);
	FUNC0(cpu, &cpuset);

	if (FUNC5(0, sizeof(cpuset), &cpuset)) {
		FUNC4("sched_setaffinity");
		FUNC2(1);
	}

	fn(arg);

	FUNC2(0);
}
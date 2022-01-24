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
struct agent_info {int cpus; int /*<<< orphan*/  ctl_fd; int /*<<< orphan*/ * rw_ti; } ;
typedef  int /*<<< orphan*/  pthread_t ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int MAX_CPUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct agent_info *s)
{
	int cpu;
	pthread_t rw_thread_per_cpu[MAX_CPUS];

	/* Start all read/write threads */
	for (cpu = 0; cpu < s->cpus; cpu++)
		rw_thread_per_cpu[cpu] = FUNC4(s->rw_ti[cpu]);

	FUNC3(s->ctl_fd);

	/* Finish all read/write threads */
	for (cpu = 0; cpu < s->cpus; cpu++) {
		int ret;

		ret = FUNC2(rw_thread_per_cpu[cpu], NULL);
		if (ret != 0) {
			FUNC1("pthread_join() error:%d (cpu %d)\n", ret, cpu);
			FUNC0(EXIT_FAILURE);
		}
	}
}
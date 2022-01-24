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
struct sched_param {int sched_priority; } ;
typedef  int /*<<< orphan*/  cpu_set_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SCHED_FIFO ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sched_param*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC5(int cpu)
{
	cpu_set_t run_cpu_mask;
	struct sched_param param;

	FUNC1(&run_cpu_mask);
	FUNC0(cpu, &run_cpu_mask);
	FUNC3(0, sizeof(cpu_set_t), &run_cpu_mask);

	param.sched_priority = 1;
	if (0 && FUNC4(0, SCHED_FIFO, &param) == -1) {
		FUNC2(stderr, "could not set SCHED_FIFO, run as root?\n");
	}
}
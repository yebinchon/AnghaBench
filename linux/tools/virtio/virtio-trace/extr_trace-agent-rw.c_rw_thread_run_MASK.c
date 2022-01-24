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
struct rw_thread_info {int /*<<< orphan*/  cpu_num; } ;
typedef  int /*<<< orphan*/  pthread_t ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct rw_thread_info*) ; 
 int /*<<< orphan*/  rw_thread_main ; 

pthread_t FUNC3(struct rw_thread_info *rw_ti)
{
	int ret;
	pthread_t rw_thread_per_cpu;

	ret = FUNC2(&rw_thread_per_cpu, NULL, rw_thread_main, rw_ti);
	if (ret != 0) {
		FUNC1("Could not create a rw thread(%d)\n", rw_ti->cpu_num);
		FUNC0(EXIT_FAILURE);
	}

	return rw_thread_per_cpu;
}
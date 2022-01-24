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
 int EV_GROUP_NUM ; 
 int NO_FD ; 
 int /*<<< orphan*/  PERF_EVENT_IOC_DISABLE ; 
 int /*<<< orphan*/  PERF_EVENT_IOC_ENABLE ; 
 int /*<<< orphan*/  PERF_IOC_FLAG_GROUP ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int** group_leader_fds ; 
 int FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int number_of_cpus ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static void FUNC3() {
    int group, cpu;

    for(group = 0; group < EV_GROUP_NUM; group++) {
        for(cpu = 0; cpu < number_of_cpus; cpu++) {
            int current_fd = *(group_leader_fds[group] + cpu);

            if(FUNC2(current_fd == NO_FD)) continue;

            if(FUNC1(current_fd, PERF_EVENT_IOC_DISABLE, PERF_IOC_FLAG_GROUP) == -1
               || FUNC1(current_fd, PERF_EVENT_IOC_ENABLE, PERF_IOC_FLAG_GROUP) == -1)
            {
                FUNC0("Cannot reenable event group");
            }
        }
    }
}
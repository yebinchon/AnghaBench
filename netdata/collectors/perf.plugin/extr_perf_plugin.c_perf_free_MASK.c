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
struct perf_event {scalar_t__ id; scalar_t__* fd; scalar_t__* prev_value; scalar_t__* prev_time_enabled; scalar_t__* prev_time_running; } ;

/* Variables and functions */
 int EV_GROUP_NUM ; 
 scalar_t__ EV_ID_END ; 
 scalar_t__ NO_FD ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*) ; 
 scalar_t__** group_leader_fds ; 
 int number_of_cpus ; 
 struct perf_event* perf_events ; 

__attribute__((used)) static void FUNC2(void) {
    int cpu, group;
    struct perf_event *current_event = NULL;

    for(current_event = &perf_events[0]; current_event->id != EV_ID_END; current_event++) {
        for(cpu = 0; cpu < number_of_cpus; cpu++)
            if(*(current_event->fd + cpu) != NO_FD) FUNC0(*(current_event->fd + cpu));

        FUNC1(current_event->fd);
        FUNC1(current_event->prev_value);
        FUNC1(current_event->prev_time_enabled);
        FUNC1(current_event->prev_time_running);
    }

    for(group = 0; group < EV_GROUP_NUM; group++)
        FUNC1(group_leader_fds[group]);
}
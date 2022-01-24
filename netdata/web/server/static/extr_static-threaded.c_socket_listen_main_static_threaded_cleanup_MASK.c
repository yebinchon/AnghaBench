#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ usec_t ;
struct netdata_static_thread {int /*<<< orphan*/  enabled; } ;
struct TYPE_2__ {scalar_t__ running; int /*<<< orphan*/  thread; } ;

/* Variables and functions */
 int /*<<< orphan*/  NETDATA_MAIN_THREAD_EXITED ; 
 int /*<<< orphan*/  NETDATA_MAIN_THREAD_EXITING ; 
 int USEC_PER_SEC ; 
 int /*<<< orphan*/  api_sockets ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int static_threaded_workers_count ; 
 TYPE_1__* static_workers_private_data ; 

__attribute__((used)) static void FUNC5(void *ptr) {
    struct netdata_static_thread *static_thread = (struct netdata_static_thread *)ptr;
    static_thread->enabled = NETDATA_MAIN_THREAD_EXITING;

    int i, found = 0;
    usec_t max = 2 * USEC_PER_SEC, step = 50000;

    // we start from 1, - 0 is self
    for(i = 1; i < static_threaded_workers_count; i++) {
        if(static_workers_private_data[i].running) {
            found++;
            FUNC1("stopping worker %d", i + 1);
            FUNC3(static_workers_private_data[i].thread);
        }
        else
            FUNC1("found stopped worker %d", i + 1);
    }

    while(found && max > 0) {
        max -= step;
        FUNC1("Waiting %d static web threads to finish...", found);
        FUNC4(step);
        found = 0;

        // we start from 1, - 0 is self
        for(i = 1; i < static_threaded_workers_count; i++) {
            if (static_workers_private_data[i].running)
                found++;
        }
    }

    if(found)
        FUNC0("%d static web threads are taking too long to finish. Giving up.", found);

    FUNC1("closing all web server sockets...");
    FUNC2(&api_sockets);

    FUNC1("all static web threads stopped.");
    static_thread->enabled = NETDATA_MAIN_THREAD_EXITED;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct netdata_static_thread {int /*<<< orphan*/  enabled; } ;
struct TYPE_4__ {int threads; int /*<<< orphan*/  sockets; TYPE_1__* collection_threads_status; } ;
struct TYPE_3__ {int /*<<< orphan*/  thread; scalar_t__ status; } ;

/* Variables and functions */
 int /*<<< orphan*/  NETDATA_MAIN_THREAD_EXITED ; 
 int /*<<< orphan*/  NETDATA_MAIN_THREAD_EXITING ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_2__ statsd ; 

__attribute__((used)) static void FUNC3(void *data) {
    struct netdata_static_thread *static_thread = (struct netdata_static_thread *)data;
    static_thread->enabled = NETDATA_MAIN_THREAD_EXITING;
    FUNC0("cleaning up...");

    if (statsd.collection_threads_status) {
        int i;
        for (i = 0; i < statsd.threads; i++) {
            if(statsd.collection_threads_status[i].status) {
                FUNC0("STATSD: stopping data collection thread %d...", i + 1);
                FUNC2(statsd.collection_threads_status[i].thread);
            }
            else {
                FUNC0("STATSD: data collection thread %d found stopped.", i + 1);
            }
        }
    }

    FUNC0("STATSD: closing sockets...");
    FUNC1(&statsd.sockets);

    FUNC0("STATSD: cleanup completed.");
    static_thread->enabled = NETDATA_MAIN_THREAD_EXITED;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int useconds_t ;
typedef  scalar_t__ rel_time_t ;
struct TYPE_6__ {scalar_t__ state; scalar_t__ last_cmd_time; TYPE_1__* thread; int /*<<< orphan*/  transport; } ;
typedef  TYPE_2__ conn ;
struct TYPE_7__ {int verbose; scalar_t__ idle_timeout; } ;
struct TYPE_5__ {int /*<<< orphan*/  notify_send_fd; } ;

/* Variables and functions */
 int CONNS_PER_SLICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int TIMEOUT_MSG_SIZE ; 
 scalar_t__ conn_new_cmd ; 
 scalar_t__ conn_read ; 
 TYPE_2__** conns ; 
 scalar_t__ current_time ; 
 scalar_t__ do_run_conn_timeout_thread ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int max_fds ; 
 int /*<<< orphan*/  FUNC2 (char*,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 TYPE_3__ settings ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void *FUNC6(void *arg) {
    int i;
    conn *c;
    char buf[TIMEOUT_MSG_SIZE];
    rel_time_t oldest_last_cmd;
    int sleep_time;
    useconds_t timeslice = 1000000 / (max_fds / CONNS_PER_SLICE);

    while(do_run_conn_timeout_thread) {
        if (settings.verbose > 2)
            FUNC1(stderr, "idle timeout thread at top of connection list\n");

        oldest_last_cmd = current_time;

        for (i = 0; i < max_fds; i++) {
            if ((i % CONNS_PER_SLICE) == 0) {
                if (settings.verbose > 2)
                    FUNC1(stderr, "idle timeout thread sleeping for %ulus\n",
                        (unsigned int)timeslice);
                FUNC4(timeslice);
            }

            if (!conns[i])
                continue;

            c = conns[i];

            if (!FUNC0(c->transport))
                continue;

            if (c->state != conn_new_cmd && c->state != conn_read)
                continue;

            if ((current_time - c->last_cmd_time) > settings.idle_timeout) {
                buf[0] = 't';
                FUNC2(&buf[1], &i, sizeof(int));
                if (FUNC5(c->thread->notify_send_fd, buf, TIMEOUT_MSG_SIZE)
                    != TIMEOUT_MSG_SIZE)
                    FUNC3("Failed to write timeout to notify pipe");
            } else {
                if (c->last_cmd_time < oldest_last_cmd)
                    oldest_last_cmd = c->last_cmd_time;
            }
        }

        /* This is the soonest we could have another connection time out */
        sleep_time = settings.idle_timeout - (current_time - oldest_last_cmd) + 1;
        if (sleep_time <= 0)
            sleep_time = 1;

        if (settings.verbose > 2)
            FUNC1(stderr,
                    "idle timeout thread finished pass, sleeping for %ds\n",
                    sleep_time);
        FUNC4((useconds_t) sleep_time * 1000000);
    }

    return NULL;
}
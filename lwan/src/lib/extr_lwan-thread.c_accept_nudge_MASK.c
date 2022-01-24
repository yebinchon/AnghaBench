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
typedef  int /*<<< orphan*/  uint64_t ;
struct timeout_queue {int /*<<< orphan*/  timeout; } ;
struct lwan_thread {int /*<<< orphan*/  wheel; int /*<<< orphan*/  pending_fds; } ;
struct lwan_connection {int dummy; } ;
struct TYPE_2__ {struct lwan_connection* ptr; } ;
struct epoll_event {int /*<<< orphan*/  events; TYPE_1__ data; } ;
struct coro_switcher {int dummy; } ;
typedef  int /*<<< orphan*/  event ;

/* Variables and functions */
 int /*<<< orphan*/  CONN_EVENTS_READ ; 
 int /*<<< orphan*/  EPOLL_CTL_ADD ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int,struct epoll_event*) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct lwan_connection*,struct coro_switcher*,struct timeout_queue*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC7(int pipe_fd,
                         struct lwan_thread *t,
                         struct lwan_connection *conns,
                         struct timeout_queue *tq,
                         struct coro_switcher *switcher,
                         int epoll_fd)
{
    uint64_t event;
    int new_fd;

    /* Errors are ignored here as pipe_fd serves just as a way to wake the
     * thread from epoll_wait().  It's fine to consume the queue at this
     * point, regardless of the error type. */
    (void)FUNC3(pipe_fd, &event, sizeof(event));

    while (FUNC5(&t->pending_fds, &new_fd)) {
        struct lwan_connection *conn = &conns[new_fd];
        struct epoll_event ev = {
            .data.ptr = conn,
            .events = FUNC1(CONN_EVENTS_READ),
        };

        if (FUNC0(!FUNC2(epoll_fd, EPOLL_CTL_ADD, new_fd, &ev)))
            FUNC4(conn, switcher, tq);
    }

    FUNC6(t->wheel, &tq->timeout, 1000);
}
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
struct timeout_queue {int dummy; } ;
struct lwan_thread {int epoll_fd; int* pipe_fd; struct lwan* lwan; } ;
struct lwan_connection {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  barrier; struct lwan_thread* threads; scalar_t__ max_fd; } ;
struct lwan {TYPE_2__ thread; int /*<<< orphan*/  conns; } ;
struct TYPE_3__ {struct lwan_connection* ptr; } ;
struct epoll_event {int events; TYPE_1__ data; } ;
struct coro_switcher {int dummy; } ;

/* Variables and functions */
 scalar_t__ EBADF ; 
 scalar_t__ EINVAL ; 
 int EPOLLHUP ; 
 int EPOLLRDHUP ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int const,struct lwan_thread*,int /*<<< orphan*/ ,struct timeout_queue*,struct coro_switcher*,int) ; 
 struct epoll_event* FUNC2 (size_t,int) ; 
 int FUNC3 (int,struct epoll_event*,int const,int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC4 (struct epoll_event*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 
 int FUNC8 (int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct timeout_queue*,struct lwan_connection*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct timeout_queue*,struct lwan*) ; 
 int /*<<< orphan*/  FUNC12 (struct timeout_queue*,struct lwan_connection*) ; 
 int /*<<< orphan*/  FUNC13 (struct timeout_queue*) ; 
 int /*<<< orphan*/  FUNC14 (struct timeout_queue*,struct lwan_connection*) ; 
 int FUNC15 (struct timeout_queue*,struct lwan_thread*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct lwan_thread*) ; 

__attribute__((used)) static void *FUNC17(void *data)
{
    struct lwan_thread *t = data;
    int epoll_fd = t->epoll_fd;
    const int read_pipe_fd = t->pipe_fd[0];
    const int max_events = FUNC8((int)t->lwan->thread.max_fd, 1024);
    struct lwan *lwan = t->lwan;
    struct epoll_event *events;
    struct coro_switcher switcher;
    struct timeout_queue tq;

    FUNC7("Worker thread #%zd starting",
                      t - t->lwan->thread.threads + 1);
    FUNC5("worker");

    events = FUNC2((size_t)max_events, sizeof(*events));
    if (FUNC0(!events))
        FUNC6("Could not allocate memory for events");

    FUNC16(t);

    FUNC11(&tq, lwan);

    FUNC9(&lwan->thread.barrier);

    for (;;) {
        int timeout = FUNC15(&tq, t, epoll_fd);
        int n_fds = FUNC3(epoll_fd, events, max_events, timeout);

        if (FUNC0(n_fds < 0)) {
            if (errno == EBADF || errno == EINVAL)
                break;
            continue;
        }

        for (struct epoll_event *event = events; n_fds--; event++) {
            struct lwan_connection *conn;

            if (FUNC0(!event->data.ptr)) {
                FUNC1(read_pipe_fd, t, lwan->conns, &tq, &switcher,
                             epoll_fd);
                continue;
            }

            conn = event->data.ptr;

            if (FUNC0(event->events & (EPOLLRDHUP | EPOLLHUP))) {
                FUNC12(&tq, conn);
                continue;
            }

            FUNC10(&tq, conn, epoll_fd);
            FUNC14(&tq, conn);
        }
    }

    FUNC9(&lwan->thread.barrier);

    FUNC13(&tq);
    FUNC4(events);

    return NULL;
}
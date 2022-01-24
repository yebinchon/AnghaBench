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
struct lwan_thread {int* pipe_fd; int /*<<< orphan*/  pending_fds; struct lwan* lwan; int /*<<< orphan*/  self; int /*<<< orphan*/  epoll_fd; int /*<<< orphan*/  wheel; } ;
struct TYPE_4__ {size_t max_fd; } ;
struct lwan {TYPE_2__ thread; } ;
struct TYPE_3__ {int /*<<< orphan*/ * ptr; } ;
struct epoll_event {TYPE_1__ data; int /*<<< orphan*/  events; } ;
typedef  int /*<<< orphan*/  pthread_attr_t ;

/* Variables and functions */
 int EFD_CLOEXEC ; 
 int EFD_NONBLOCK ; 
 int EFD_SEMAPHORE ; 
 int /*<<< orphan*/  EPOLLIN ; 
 int /*<<< orphan*/  EPOLL_CLOEXEC ; 
 int /*<<< orphan*/  EPOLL_CTL_ADD ; 
 int O_CLOEXEC ; 
 int O_NONBLOCK ; 
 int /*<<< orphan*/  PTHREAD_CREATE_JOINABLE ; 
 int /*<<< orphan*/  PTHREAD_SCOPE_SYSTEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct epoll_event*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (struct lwan_thread*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (int*,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct lwan_thread*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  thread_io_loop ; 
 int /*<<< orphan*/  FUNC13 (int*) ; 

__attribute__((used)) static void FUNC14(struct lwan *l, struct lwan_thread *thread)
{
    int ignore;
    pthread_attr_t attr;

    FUNC5(thread, 0, sizeof(*thread));
    thread->lwan = l;

    thread->wheel = FUNC13(&ignore);
    if (!thread->wheel)
        FUNC3("Could not create timer wheel");

    if ((thread->epoll_fd = FUNC0(EPOLL_CLOEXEC)) < 0)
        FUNC4("epoll_create");

    if (FUNC8(&attr))
        FUNC4("pthread_attr_init");

    if (FUNC10(&attr, PTHREAD_SCOPE_SYSTEM))
        FUNC4("pthread_attr_setscope");

    if (FUNC9(&attr, PTHREAD_CREATE_JOINABLE))
        FUNC4("pthread_attr_setdetachstate");

#if defined(HAVE_EVENTFD)
    int efd = eventfd(0, EFD_NONBLOCK | EFD_SEMAPHORE | EFD_CLOEXEC);
    if (efd < 0)
        lwan_status_critical_perror("eventfd");

    thread->pipe_fd[0] = thread->pipe_fd[1] = efd;
#else
    if (FUNC6(thread->pipe_fd, O_NONBLOCK | O_CLOEXEC) < 0)
        FUNC4("pipe");
#endif

    struct epoll_event event = { .events = EPOLLIN, .data.ptr = NULL };
    if (FUNC1(thread->epoll_fd, EPOLL_CTL_ADD, thread->pipe_fd[0], &event) < 0)
        FUNC4("epoll_ctl");

    if (FUNC11(&thread->self, &attr, thread_io_loop, thread))
        FUNC4("pthread_create");

    if (FUNC7(&attr))
        FUNC4("pthread_attr_destroy");

    size_t n_queue_fds = thread->lwan->thread.max_fd;
    if (FUNC12(&thread->pending_fds, n_queue_fds) < 0) {
        FUNC3("Could not initialize pending fd "
                             "queue width %zu elements", n_queue_fds);
    }
}
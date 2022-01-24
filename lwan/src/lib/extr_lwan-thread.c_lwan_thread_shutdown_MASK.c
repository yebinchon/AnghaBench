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
struct lwan_thread {int /*<<< orphan*/  wheel; int /*<<< orphan*/  pending_fds; int /*<<< orphan*/  self; int /*<<< orphan*/ * pipe_fd; int /*<<< orphan*/  epoll_fd; } ;
struct TYPE_2__ {int count; struct lwan_thread* threads; int /*<<< orphan*/  barrier; } ;
struct lwan {TYPE_1__ thread; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct lwan_thread*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct lwan_thread*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

void FUNC9(struct lwan *l)
{
    FUNC2("Shutting down threads");

    for (int i = 0; i < l->thread.count; i++) {
        struct lwan_thread *t = &l->thread.threads[i];

        FUNC0(t->epoll_fd);
        FUNC3(t);
    }

    FUNC5(&l->thread.barrier);
    FUNC4(&l->thread.barrier);

    for (int i = 0; i < l->thread.count; i++) {
        struct lwan_thread *t = &l->thread.threads[i];

        FUNC0(t->pipe_fd[0]);
#if !defined(HAVE_EVENTFD)
        FUNC0(t->pipe_fd[1]);
#endif

        FUNC6(l->thread.threads[i].self, NULL);
        FUNC7(&t->pending_fds);
        FUNC8(t->wheel);
    }

    FUNC1(l->thread.threads);
}
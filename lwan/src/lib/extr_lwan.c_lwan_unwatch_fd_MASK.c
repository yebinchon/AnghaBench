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
struct lwan_fd_watch {scalar_t__ fd; int /*<<< orphan*/  coro; } ;
struct lwan {scalar_t__ main_socket; int /*<<< orphan*/  epfd; } ;

/* Variables and functions */
 int /*<<< orphan*/  EPOLL_CTL_DEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct lwan_fd_watch*) ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__) ; 

void FUNC4(struct lwan *l, struct lwan_fd_watch *w)
{
    if (l->main_socket != w->fd) {
        if (FUNC1(l->epfd, EPOLL_CTL_DEL, w->fd, NULL) < 0)
            FUNC3("Could not unwatch fd %d", w->fd);
    }

    FUNC0(w->coro);
    FUNC2(w);
}
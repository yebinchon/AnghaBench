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
struct lwan_fd_watch {int dummy; } ;
struct lwan {int main_socket; int /*<<< orphan*/  epfd; } ;
struct TYPE_2__ {int /*<<< orphan*/  ptr; } ;
struct epoll_event {scalar_t__ events; TYPE_1__ data; } ;

/* Variables and functions */
 scalar_t__ EAGAIN ; 
 scalar_t__ EINTR ; 
 int EPOLLHUP ; 
 int EPOLLIN ; 
 int EPOLLRDHUP ; 
 int /*<<< orphan*/  FUNC0 (struct epoll_event*) ; 
 int /*<<< orphan*/  SIGINT ; 
 scalar_t__ SIG_ERR ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  accept_connection_coro ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct epoll_event*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (struct lwan*,struct lwan_fd_watch*) ; 
 struct lwan_fd_watch* FUNC9 (struct lwan*,int,int,int /*<<< orphan*/ ,struct lwan*) ; 
 int main_socket ; 
 int /*<<< orphan*/  sigint_handler ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC11(struct lwan *l)
{
    struct epoll_event evs[16];
    struct lwan_fd_watch *watch;

    FUNC2(main_socket == -1);
    main_socket = l->main_socket;

    if (FUNC10(SIGINT, sigint_handler) == SIG_ERR)
        FUNC5("Could not set signal handler");

    watch = FUNC9(l, l->main_socket, EPOLLIN | EPOLLHUP | EPOLLRDHUP,
                          accept_connection_coro, l);
    if (!watch)
        FUNC5("Could not watch main socket");

    FUNC6("Ready to serve");

    while (true) {
        int n_evs = FUNC4(l->epfd, evs, FUNC0(evs), -1);

        if (FUNC1(n_evs < 0)) {
            if (main_socket < 0)
                break;
            if (errno == EINTR || errno == EAGAIN)
                continue;
            FUNC7("epoll_wait");
            break;
        }

        for (int i = 0; i < n_evs; i++) {
            if (!FUNC3(evs[i].data.ptr, (int)evs[i].events))
                break;
        }
    }

    FUNC8(l, watch);
}
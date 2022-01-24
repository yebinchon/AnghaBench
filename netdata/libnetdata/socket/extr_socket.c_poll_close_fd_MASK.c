#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct pollfd {int fd; scalar_t__ revents; scalar_t__ events; } ;
typedef  size_t ssize_t ;
struct TYPE_6__ {size_t slot; int flags; int fd; int socktype; struct TYPE_6__* next; int /*<<< orphan*/ * client_host; int /*<<< orphan*/ * client_port; int /*<<< orphan*/ * client_ip; int /*<<< orphan*/ * snd_callback; int /*<<< orphan*/ * rcv_callback; int /*<<< orphan*/  (* del_callback ) (TYPE_2__*) ;int /*<<< orphan*/ * data; TYPE_1__* p; } ;
struct TYPE_5__ {size_t max; size_t min; TYPE_2__* first_free; int /*<<< orphan*/  used; int /*<<< orphan*/  slots; struct pollfd* fds; } ;
typedef  TYPE_1__ POLLJOB ;
typedef  TYPE_2__ POLLINFO ;

/* Variables and functions */
 int /*<<< orphan*/  D_POLLFD ; 
 int POLLINFO_FLAG_CLIENT_SOCKET ; 
 int POLLINFO_FLAG_DONT_CLOSE ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,size_t,int,size_t,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 scalar_t__ FUNC8 (int) ; 

inline void FUNC9(POLLINFO *pi) {
    POLLJOB *p = pi->p;

    struct pollfd *pf = &p->fds[pi->slot];
    FUNC1(D_POLLFD, "POLLFD: DEL: request to clear slot %zu (fd %d), old next free was %zd", pi->slot, pf->fd, p->first_free?(ssize_t)p->first_free->slot:(ssize_t)-1);

    if(FUNC8(pf->fd == -1)) return;

    FUNC5();

    if(pi->flags & POLLINFO_FLAG_CLIENT_SOCKET) {
        pi->del_callback(pi);

        if(FUNC4(!(pi->flags & POLLINFO_FLAG_DONT_CLOSE))) {
            if(FUNC0(pf->fd) == -1)
                FUNC2("Failed to close() poll_events() socket %d", pf->fd);
        }
    }

    pf->fd = -1;
    pf->events = 0;
    pf->revents = 0;

    pi->fd = -1;
    pi->socktype = -1;
    pi->flags = 0;
    pi->data = NULL;

    pi->del_callback = NULL;
    pi->rcv_callback = NULL;
    pi->snd_callback = NULL;

    FUNC3(pi->client_ip);
    pi->client_ip = NULL;

    FUNC3(pi->client_port);
    pi->client_port = NULL;

    FUNC3(pi->client_host);
    pi->client_host = NULL;

    pi->next = p->first_free;
    p->first_free = pi;

    p->used--;
    if(FUNC8(p->max == pi->slot)) {
        p->max = p->min;
        ssize_t i;
        for(i = (ssize_t)pi->slot; i > (ssize_t)p->min ;i--) {
            if (FUNC8(p->fds[i].fd != -1)) {
                p->max = (size_t)i;
                break;
            }
        }
    }
    FUNC6();

    FUNC1(D_POLLFD, "POLLFD: DEL: completed, slots = %zu, used = %zu, min = %zu, max = %zu, next free = %zd", p->slots, p->used, p->min, p->max, p->first_free?(ssize_t)p->first_free->slot:(ssize_t)-1);
}
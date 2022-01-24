#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {size_t sfd; int /*<<< orphan*/ * ssl_wbuf; struct TYPE_5__* iov; struct TYPE_5__* suffixlist; struct TYPE_5__* ilist; struct TYPE_5__* wbuf; struct TYPE_5__* rbuf; struct TYPE_5__* msglist; struct TYPE_5__* hdrbuf; } ;
typedef  TYPE_1__ conn ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ ** conns ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 size_t max_fds ; 

void FUNC3(conn *c) {
    if (c) {
        FUNC1(c != NULL);
        FUNC1(c->sfd >= 0 && c->sfd < max_fds);

        FUNC0(c);
        conns[c->sfd] = NULL;
        if (c->hdrbuf)
            FUNC2(c->hdrbuf);
        if (c->msglist)
            FUNC2(c->msglist);
        if (c->rbuf)
            FUNC2(c->rbuf);
        if (c->wbuf)
            FUNC2(c->wbuf);
        if (c->ilist)
            FUNC2(c->ilist);
        if (c->suffixlist)
            FUNC2(c->suffixlist);
        if (c->iov)
            FUNC2(c->iov);
#ifdef TLS
        if (c->ssl_wbuf)
            c->ssl_wbuf = NULL;
#endif

        FUNC2(c);
    }
}
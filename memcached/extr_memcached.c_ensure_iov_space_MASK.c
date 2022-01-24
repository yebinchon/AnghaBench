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
struct iovec {int dummy; } ;
struct TYPE_6__ {int iovused; int iovsize; int msgused; TYPE_1__* msglist; struct iovec* iov; } ;
typedef  TYPE_2__ conn ;
struct TYPE_7__ {int /*<<< orphan*/  malloc_fails; } ;
struct TYPE_5__ {scalar_t__ msg_iovlen; struct iovec* msg_iov; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct iovec*,int) ; 
 TYPE_3__ stats ; 

__attribute__((used)) static int FUNC4(conn *c) {
    FUNC2(c != NULL);

    if (c->iovused >= c->iovsize) {
        int i, iovnum;
        struct iovec *new_iov = (struct iovec *)FUNC3(c->iov,
                                (c->iovsize * 2) * sizeof(struct iovec));
        if (! new_iov) {
            FUNC0();
            stats.malloc_fails++;
            FUNC1();
            return -1;
        }
        c->iov = new_iov;
        c->iovsize *= 2;

        /* Point all the msghdr structures at the new list. */
        for (i = 0, iovnum = 0; i < c->msgused; i++) {
            c->msglist[i].msg_iov = &c->iov[iovnum];
            iovnum += c->msglist[i].msg_iovlen;
        }
    }

    return 0;
}
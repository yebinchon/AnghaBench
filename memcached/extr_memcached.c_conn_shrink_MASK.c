#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct msghdr {int dummy; } ;
struct iovec {int dummy; } ;
typedef  int /*<<< orphan*/  item ;
struct TYPE_3__ {scalar_t__ rsize; scalar_t__ rbytes; char* rcurr; char* rbuf; int isize; int msgsize; int iovsize; struct iovec* iov; struct msghdr* msglist; int /*<<< orphan*/ ** ilist; int /*<<< orphan*/  transport; } ;
typedef  TYPE_1__ conn ;

/* Variables and functions */
 scalar_t__ DATA_BUFFER_SIZE ; 
 int IOV_LIST_HIGHWAT ; 
 int IOV_LIST_INITIAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int ITEM_LIST_HIGHWAT ; 
 int ITEM_LIST_INITIAL ; 
 int MSG_LIST_HIGHWAT ; 
 int MSG_LIST_INITIAL ; 
 scalar_t__ READ_BUFFER_HIGHWAT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,size_t) ; 
 scalar_t__ FUNC3 (void*,int) ; 

__attribute__((used)) static void FUNC4(conn *c) {
    FUNC1(c != NULL);

    if (FUNC0(c->transport))
        return;

    if (c->rsize > READ_BUFFER_HIGHWAT && c->rbytes < DATA_BUFFER_SIZE) {
        char *newbuf;

        if (c->rcurr != c->rbuf)
            FUNC2(c->rbuf, c->rcurr, (size_t)c->rbytes);

        newbuf = (char *)FUNC3((void *)c->rbuf, DATA_BUFFER_SIZE);

        if (newbuf) {
            c->rbuf = newbuf;
            c->rsize = DATA_BUFFER_SIZE;
        }
        /* TODO check other branch... */
        c->rcurr = c->rbuf;
    }

    if (c->isize > ITEM_LIST_HIGHWAT) {
        item **newbuf = (item**) FUNC3((void *)c->ilist, ITEM_LIST_INITIAL * sizeof(c->ilist[0]));
        if (newbuf) {
            c->ilist = newbuf;
            c->isize = ITEM_LIST_INITIAL;
        }
    /* TODO check error condition? */
    }

    if (c->msgsize > MSG_LIST_HIGHWAT) {
        struct msghdr *newbuf = (struct msghdr *) FUNC3((void *)c->msglist, MSG_LIST_INITIAL * sizeof(c->msglist[0]));
        if (newbuf) {
            c->msglist = newbuf;
            c->msgsize = MSG_LIST_INITIAL;
        }
    /* TODO check error condition? */
    }

    if (c->iovsize > IOV_LIST_HIGHWAT) {
        struct iovec *newbuf = (struct iovec *) FUNC3((void *)c->iov, IOV_LIST_INITIAL * sizeof(c->iov[0]));
        if (newbuf) {
            c->iov = newbuf;
            c->iovsize = IOV_LIST_INITIAL;
        }
    /* TODO check return value */
    }
}
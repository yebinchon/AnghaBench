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
struct msghdr {scalar_t__ msg_namelen; int /*<<< orphan*/ * msg_name; int /*<<< orphan*/ * msg_iov; } ;
struct TYPE_5__ {int msgsize; int msgused; size_t iovused; scalar_t__ request_addr_size; int /*<<< orphan*/  transport; scalar_t__ msgbytes; int /*<<< orphan*/  request_addr; int /*<<< orphan*/ * iov; struct msghdr* msglist; } ;
typedef  TYPE_1__ conn ;
struct TYPE_6__ {int /*<<< orphan*/  malloc_fails; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  UDP_HEADER_SIZE ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct msghdr*,int /*<<< orphan*/ ,int) ; 
 struct msghdr* FUNC6 (struct msghdr*,int) ; 
 TYPE_2__ stats ; 

__attribute__((used)) static int FUNC7(conn *c)
{
    struct msghdr *msg;

    FUNC4(c != NULL);

    if (c->msgsize == c->msgused) {
        msg = FUNC6(c->msglist, c->msgsize * 2 * sizeof(struct msghdr));
        if (! msg) {
            FUNC1();
            stats.malloc_fails++;
            FUNC2();
            return -1;
        }
        c->msglist = msg;
        c->msgsize *= 2;
    }

    msg = c->msglist + c->msgused;

    /* this wipes msg_iovlen, msg_control, msg_controllen, and
       msg_flags, the last 3 of which aren't defined on solaris: */
    FUNC5(msg, 0, sizeof(struct msghdr));

    msg->msg_iov = &c->iov[c->iovused];

    if (FUNC0(c->transport) && c->request_addr_size > 0) {
        msg->msg_name = &c->request_addr;
        msg->msg_namelen = c->request_addr_size;
    }

    c->msgbytes = 0;
    c->msgused++;

    if (FUNC0(c->transport)) {
        /* Leave room for the UDP header, which we'll fill in later. */
        return FUNC3(c, NULL, UDP_HEADER_SIZE);
    }

    return 0;
}
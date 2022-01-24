#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct msghdr {size_t msg_iovlen; TYPE_1__* msg_iov; } ;
struct TYPE_7__ {int msgused; scalar_t__ msgbytes; int /*<<< orphan*/  iovused; struct msghdr* msglist; int /*<<< orphan*/  transport; } ;
typedef  TYPE_2__ conn ;
struct TYPE_6__ {int iov_len; void* iov_base; } ;

/* Variables and functions */
 size_t IOV_MAX ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ UDP_MAX_PAYLOAD_SIZE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC4(conn *c, const void *buf, int len) {
    struct msghdr *m;
    int leftover;

    FUNC2(c != NULL);

    if (FUNC0(c->transport)) {
        do {
            m = &c->msglist[c->msgused - 1];

            /*
             * Limit UDP packets to UDP_MAX_PAYLOAD_SIZE bytes.
             */

            /* We may need to start a new msghdr if this one is full. */
            if (m->msg_iovlen == IOV_MAX ||
                (c->msgbytes >= UDP_MAX_PAYLOAD_SIZE)) {
                FUNC1(c);
                m = &c->msglist[c->msgused - 1];
            }

            if (FUNC3(c) != 0)
                return -1;

            /* If the fragment is too big to fit in the datagram, split it up */
            if (len + c->msgbytes > UDP_MAX_PAYLOAD_SIZE) {
                leftover = len + c->msgbytes - UDP_MAX_PAYLOAD_SIZE;
                len -= leftover;
            } else {
                leftover = 0;
            }

            m = &c->msglist[c->msgused - 1];
            m->msg_iov[m->msg_iovlen].iov_base = (void *)buf;
            m->msg_iov[m->msg_iovlen].iov_len = len;

            c->msgbytes += len;
            c->iovused++;
            m->msg_iovlen++;

            buf = ((char *)buf) + len;
            len = leftover;
        } while (leftover > 0);
    } else {
        /* Optimized path for TCP connections */
        m = &c->msglist[c->msgused - 1];
        if (m->msg_iovlen == IOV_MAX) {
            FUNC1(c);
            m = &c->msglist[c->msgused - 1];
        }

        if (FUNC3(c) != 0)
            return -1;

        m->msg_iov[m->msg_iovlen].iov_base = (void *)buf;
        m->msg_iov[m->msg_iovlen].iov_len = len;
        c->msgbytes += len;
        c->iovused++;
        m->msg_iovlen++;
    }

    return 0;
}
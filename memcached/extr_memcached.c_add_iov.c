
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct msghdr {size_t msg_iovlen; TYPE_1__* msg_iov; } ;
struct TYPE_7__ {int msgused; scalar_t__ msgbytes; int iovused; struct msghdr* msglist; int transport; } ;
typedef TYPE_2__ conn ;
struct TYPE_6__ {int iov_len; void* iov_base; } ;


 size_t IOV_MAX ;
 scalar_t__ IS_UDP (int ) ;
 scalar_t__ UDP_MAX_PAYLOAD_SIZE ;
 int add_msghdr (TYPE_2__*) ;
 int assert (int ) ;
 scalar_t__ ensure_iov_space (TYPE_2__*) ;

__attribute__((used)) static int add_iov(conn *c, const void *buf, int len) {
    struct msghdr *m;
    int leftover;

    assert(c != ((void*)0));

    if (IS_UDP(c->transport)) {
        do {
            m = &c->msglist[c->msgused - 1];






            if (m->msg_iovlen == IOV_MAX ||
                (c->msgbytes >= UDP_MAX_PAYLOAD_SIZE)) {
                add_msghdr(c);
                m = &c->msglist[c->msgused - 1];
            }

            if (ensure_iov_space(c) != 0)
                return -1;


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

        m = &c->msglist[c->msgused - 1];
        if (m->msg_iovlen == IOV_MAX) {
            add_msghdr(c);
            m = &c->msglist[c->msgused - 1];
        }

        if (ensure_iov_space(c) != 0)
            return -1;

        m->msg_iov[m->msg_iovlen].iov_base = (void *)buf;
        m->msg_iov[m->msg_iovlen].iov_len = len;
        c->msgbytes += len;
        c->iovused++;
        m->msg_iovlen++;
    }

    return 0;
}

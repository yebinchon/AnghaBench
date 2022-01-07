
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct msghdr {scalar_t__ msg_namelen; int * msg_name; int * msg_iov; } ;
struct TYPE_5__ {int msgsize; int msgused; size_t iovused; scalar_t__ request_addr_size; int transport; scalar_t__ msgbytes; int request_addr; int * iov; struct msghdr* msglist; } ;
typedef TYPE_1__ conn ;
struct TYPE_6__ {int malloc_fails; } ;


 scalar_t__ IS_UDP (int ) ;
 int STATS_LOCK () ;
 int STATS_UNLOCK () ;
 int UDP_HEADER_SIZE ;
 int add_iov (TYPE_1__*,int *,int ) ;
 int assert (int ) ;
 int memset (struct msghdr*,int ,int) ;
 struct msghdr* realloc (struct msghdr*,int) ;
 TYPE_2__ stats ;

__attribute__((used)) static int add_msghdr(conn *c)
{
    struct msghdr *msg;

    assert(c != ((void*)0));

    if (c->msgsize == c->msgused) {
        msg = realloc(c->msglist, c->msgsize * 2 * sizeof(struct msghdr));
        if (! msg) {
            STATS_LOCK();
            stats.malloc_fails++;
            STATS_UNLOCK();
            return -1;
        }
        c->msglist = msg;
        c->msgsize *= 2;
    }

    msg = c->msglist + c->msgused;



    memset(msg, 0, sizeof(struct msghdr));

    msg->msg_iov = &c->iov[c->iovused];

    if (IS_UDP(c->transport) && c->request_addr_size > 0) {
        msg->msg_name = &c->request_addr;
        msg->msg_namelen = c->request_addr_size;
    }

    c->msgbytes = 0;
    c->msgused++;

    if (IS_UDP(c->transport)) {

        return add_iov(c, ((void*)0), UDP_HEADER_SIZE);
    }

    return 0;
}

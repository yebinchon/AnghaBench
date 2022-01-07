
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct msghdr {int dummy; } ;
struct iovec {int dummy; } ;
typedef int item ;
struct TYPE_3__ {scalar_t__ rsize; scalar_t__ rbytes; char* rcurr; char* rbuf; int isize; int msgsize; int iovsize; struct iovec* iov; struct msghdr* msglist; int ** ilist; int transport; } ;
typedef TYPE_1__ conn ;


 scalar_t__ DATA_BUFFER_SIZE ;
 int IOV_LIST_HIGHWAT ;
 int IOV_LIST_INITIAL ;
 scalar_t__ IS_UDP (int ) ;
 int ITEM_LIST_HIGHWAT ;
 int ITEM_LIST_INITIAL ;
 int MSG_LIST_HIGHWAT ;
 int MSG_LIST_INITIAL ;
 scalar_t__ READ_BUFFER_HIGHWAT ;
 int assert (int ) ;
 int memmove (char*,char*,size_t) ;
 scalar_t__ realloc (void*,int) ;

__attribute__((used)) static void conn_shrink(conn *c) {
    assert(c != ((void*)0));

    if (IS_UDP(c->transport))
        return;

    if (c->rsize > READ_BUFFER_HIGHWAT && c->rbytes < DATA_BUFFER_SIZE) {
        char *newbuf;

        if (c->rcurr != c->rbuf)
            memmove(c->rbuf, c->rcurr, (size_t)c->rbytes);

        newbuf = (char *)realloc((void *)c->rbuf, DATA_BUFFER_SIZE);

        if (newbuf) {
            c->rbuf = newbuf;
            c->rsize = DATA_BUFFER_SIZE;
        }

        c->rcurr = c->rbuf;
    }

    if (c->isize > ITEM_LIST_HIGHWAT) {
        item **newbuf = (item**) realloc((void *)c->ilist, ITEM_LIST_INITIAL * sizeof(c->ilist[0]));
        if (newbuf) {
            c->ilist = newbuf;
            c->isize = ITEM_LIST_INITIAL;
        }

    }

    if (c->msgsize > MSG_LIST_HIGHWAT) {
        struct msghdr *newbuf = (struct msghdr *) realloc((void *)c->msglist, MSG_LIST_INITIAL * sizeof(c->msglist[0]));
        if (newbuf) {
            c->msglist = newbuf;
            c->msgsize = MSG_LIST_INITIAL;
        }

    }

    if (c->iovsize > IOV_LIST_HIGHWAT) {
        struct iovec *newbuf = (struct iovec *) realloc((void *)c->iov, IOV_LIST_INITIAL * sizeof(c->iov[0]));
        if (newbuf) {
            c->iov = newbuf;
            c->iovsize = IOV_LIST_INITIAL;
        }

    }
}

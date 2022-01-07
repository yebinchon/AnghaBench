
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t sfd; int * ssl_wbuf; struct TYPE_5__* iov; struct TYPE_5__* suffixlist; struct TYPE_5__* ilist; struct TYPE_5__* wbuf; struct TYPE_5__* rbuf; struct TYPE_5__* msglist; struct TYPE_5__* hdrbuf; } ;
typedef TYPE_1__ conn ;


 int MEMCACHED_CONN_DESTROY (TYPE_1__*) ;
 int assert (int) ;
 int ** conns ;
 int free (TYPE_1__*) ;
 size_t max_fds ;

void conn_free(conn *c) {
    if (c) {
        assert(c != ((void*)0));
        assert(c->sfd >= 0 && c->sfd < max_fds);

        MEMCACHED_CONN_DESTROY(c);
        conns[c->sfd] = ((void*)0);
        if (c->hdrbuf)
            free(c->hdrbuf);
        if (c->msglist)
            free(c->msglist);
        if (c->rbuf)
            free(c->rbuf);
        if (c->wbuf)
            free(c->wbuf);
        if (c->ilist)
            free(c->ilist);
        if (c->suffixlist)
            free(c->suffixlist);
        if (c->iov)
            free(c->iov);





        free(c);
    }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int sfd; scalar_t__ ssl; int * ssl_wbuf; int state; } ;
typedef TYPE_1__ conn ;
struct TYPE_7__ {int verbose; } ;
struct TYPE_6__ {int curr_conns; } ;


 int SSL_free (scalar_t__) ;
 int SSL_shutdown (scalar_t__) ;
 int STATS_LOCK () ;
 int STATS_UNLOCK () ;
 int close (int) ;
 int conn_closed ;
 int fprintf (int ,char*,int) ;
 TYPE_4__ settings ;
 TYPE_2__ stats_state ;
 int stderr ;

void sidethread_conn_close(conn *c) {
    c->state = conn_closed;
    if (settings.verbose > 1)
        fprintf(stderr, "<%d connection closed from side thread.\n", c->sfd);







    close(c->sfd);

    STATS_LOCK();
    stats_state.curr_conns--;
    STATS_UNLOCK();

    return;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int sfd; scalar_t__ ssl; int event; } ;
typedef TYPE_1__ conn ;
struct TYPE_9__ {int verbose; } ;
struct TYPE_8__ {int curr_conns; } ;


 int MEMCACHED_CONN_RELEASE (int) ;
 int SSL_free (scalar_t__) ;
 int SSL_shutdown (scalar_t__) ;
 int STATS_LOCK () ;
 int STATS_UNLOCK () ;
 int allow_new_conns ;
 int assert (int ) ;
 int close (int) ;
 int conn_cleanup (TYPE_1__*) ;
 int conn_closed ;
 int conn_lock ;
 int conn_set_state (TYPE_1__*,int ) ;
 int event_del (int *) ;
 int fprintf (int ,char*,int) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 TYPE_3__ settings ;
 TYPE_2__ stats_state ;
 int stderr ;

__attribute__((used)) static void conn_close(conn *c) {
    assert(c != ((void*)0));


    event_del(&c->event);

    if (settings.verbose > 1)
        fprintf(stderr, "<%d connection closed.\n", c->sfd);

    conn_cleanup(c);

    MEMCACHED_CONN_RELEASE(c->sfd);
    conn_set_state(c, conn_closed);






    close(c->sfd);
    pthread_mutex_lock(&conn_lock);
    allow_new_conns = 1;
    pthread_mutex_unlock(&conn_lock);

    STATS_LOCK();
    stats_state.curr_conns--;
    STATS_UNLOCK();

    return;
}

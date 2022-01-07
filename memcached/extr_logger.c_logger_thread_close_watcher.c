
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t id; int buf; int c; } ;
typedef TYPE_1__ logger_watcher ;


 int L_DEBUG (char*) ;
 int bipbuf_free (int ) ;
 int free (TYPE_1__*) ;
 int logger_set_flags () ;
 int sidethread_conn_close (int ) ;
 int watcher_count ;
 int ** watchers ;

__attribute__((used)) static void logger_thread_close_watcher(logger_watcher *w) {
    L_DEBUG("LOGGER: Closing dead watcher\n");
    watchers[w->id] = ((void*)0);
    sidethread_conn_close(w->c);
    watcher_count--;
    bipbuf_free(w->buf);
    free(w);
    logger_set_flags();
}

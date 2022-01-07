
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ idle_timeout; } ;


 int conn_timeout_thread ;
 int conn_timeout_tid ;
 int do_run_conn_timeout_thread ;
 int fprintf (int ,char*,char*) ;
 int pthread_create (int *,int *,int ,int *) ;
 TYPE_1__ settings ;
 int stderr ;
 char* strerror (int) ;

__attribute__((used)) static int start_conn_timeout_thread() {
    int ret;

    if (settings.idle_timeout == 0)
        return -1;

    do_run_conn_timeout_thread = 1;
    if ((ret = pthread_create(&conn_timeout_tid, ((void*)0),
        conn_timeout_thread, ((void*)0))) != 0) {
        fprintf(stderr, "Can't create idle connection timeout thread: %s\n",
            strerror(ret));
        return -1;
    }

    return 0;
}

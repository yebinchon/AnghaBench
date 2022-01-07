
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int conn_timeout_tid ;
 scalar_t__ do_run_conn_timeout_thread ;
 int pthread_join (int ,int *) ;

int stop_conn_timeout_thread(void) {
    if (!do_run_conn_timeout_thread)
        return -1;
    do_run_conn_timeout_thread = 0;
    pthread_join(conn_timeout_tid, ((void*)0));
    return 0;
}

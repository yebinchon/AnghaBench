
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int conn_lock ;
 int do_accept_new_conns (int const) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

void accept_new_conns(const bool do_accept) {
    pthread_mutex_lock(&conn_lock);
    do_accept_new_conns(do_accept);
    pthread_mutex_unlock(&conn_lock);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ do_run_maintenance_thread ;
 int maintenance_cond ;
 int maintenance_lock ;
 int maintenance_tid ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pthread_cond_signal (int *) ;
 int pthread_join (int ,int *) ;

void stop_assoc_maintenance_thread() {
    mutex_lock(&maintenance_lock);
    do_run_maintenance_thread = 0;
    pthread_cond_signal(&maintenance_cond);
    mutex_unlock(&maintenance_lock);


    pthread_join(maintenance_tid, ((void*)0));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ do_run_slab_rebalance_thread ;
 int mutex_lock (int *) ;
 int pthread_cond_signal (int *) ;
 int pthread_join (int ,int *) ;
 int pthread_mutex_unlock (int *) ;
 int rebalance_tid ;
 int slab_rebalance_cond ;
 int slabs_rebalance_lock ;

void stop_slab_maintenance_thread(void) {
    mutex_lock(&slabs_rebalance_lock);
    do_run_slab_rebalance_thread = 0;
    pthread_cond_signal(&slab_rebalance_cond);
    pthread_mutex_unlock(&slabs_rebalance_lock);


    pthread_join(rebalance_tid, ((void*)0));
}

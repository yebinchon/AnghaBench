
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ done; int * slab_start; } ;


 scalar_t__ do_run_slab_rebalance_thread ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pthread_cond_wait (int *,int *) ;
 TYPE_1__ slab_rebal ;
 int slab_rebalance_cond ;
 int slab_rebalance_finish () ;
 int slab_rebalance_move () ;
 int slab_rebalance_signal ;
 scalar_t__ slab_rebalance_start () ;
 int slabs_rebalance_lock ;
 int usleep (int) ;

__attribute__((used)) static void *slab_rebalance_thread(void *arg) {
    int was_busy = 0;
    int backoff_timer = 1;
    int backoff_max = 1000;

    mutex_lock(&slabs_rebalance_lock);


    while (slab_rebalance_signal || do_run_slab_rebalance_thread) {
        if (slab_rebalance_signal == 1) {
            if (slab_rebalance_start() < 0) {

                slab_rebalance_signal = 0;
            }

            was_busy = 0;
        } else if (slab_rebalance_signal && slab_rebal.slab_start != ((void*)0)) {
            was_busy = slab_rebalance_move();
        }

        if (slab_rebal.done) {
            slab_rebalance_finish();
        } else if (was_busy) {


            usleep(backoff_timer);
            backoff_timer = backoff_timer * 2;
            if (backoff_timer > backoff_max)
                backoff_timer = backoff_max;
        }

        if (slab_rebalance_signal == 0) {

            pthread_cond_wait(&slab_rebalance_cond, &slabs_rebalance_lock);
        }
    }


    mutex_unlock(&slabs_rebalance_lock);
    return ((void*)0);
}

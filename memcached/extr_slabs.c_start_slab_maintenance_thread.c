
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * slab_start; } ;


 scalar_t__ DEFAULT_SLAB_BULK_CHECK ;
 scalar_t__ atoi (char*) ;
 int fprintf (int ,char*,char*) ;
 char* getenv (char*) ;
 int pthread_create (int *,int *,int ,int *) ;
 int rebalance_tid ;
 scalar_t__ slab_bulk_check ;
 TYPE_1__ slab_rebal ;
 scalar_t__ slab_rebalance_signal ;
 int slab_rebalance_thread ;
 int stderr ;
 char* strerror (int) ;

int start_slab_maintenance_thread(void) {
    int ret;
    slab_rebalance_signal = 0;
    slab_rebal.slab_start = ((void*)0);
    char *env = getenv("MEMCACHED_SLAB_BULK_CHECK");
    if (env != ((void*)0)) {
        slab_bulk_check = atoi(env);
        if (slab_bulk_check == 0) {
            slab_bulk_check = DEFAULT_SLAB_BULK_CHECK;
        }
    }

    if ((ret = pthread_create(&rebalance_tid, ((void*)0),
                              slab_rebalance_thread, ((void*)0))) != 0) {
        fprintf(stderr, "Can't create rebal thread: %s\n", strerror(ret));
        return -1;
    }
    return 0;
}

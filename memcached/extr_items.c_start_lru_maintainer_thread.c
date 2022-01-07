
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lru_maintainer_thread; } ;


 int do_run_lru_maintainer_thread ;
 int fprintf (int ,char*,char*) ;
 int lru_maintainer_lock ;
 int lru_maintainer_thread ;
 int lru_maintainer_tid ;
 int pthread_create (int *,int *,int ,void*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 TYPE_1__ settings ;
 int stderr ;
 char* strerror (int) ;

int start_lru_maintainer_thread(void *arg) {
    int ret;

    pthread_mutex_lock(&lru_maintainer_lock);
    do_run_lru_maintainer_thread = 1;
    settings.lru_maintainer_thread = 1;
    if ((ret = pthread_create(&lru_maintainer_tid, ((void*)0),
        lru_maintainer_thread, arg)) != 0) {
        fprintf(stderr, "Can't create LRU maintainer thread: %s\n",
            strerror(ret));
        pthread_mutex_unlock(&lru_maintainer_lock);
        return -1;
    }
    pthread_mutex_unlock(&lru_maintainer_lock);

    return 0;
}

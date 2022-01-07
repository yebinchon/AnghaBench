
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ lru_crawler; } ;


 int do_run_lru_crawler_thread ;
 int fprintf (int ,char*,char*) ;
 int item_crawler_thread ;
 int item_crawler_tid ;
 int lru_crawler_cond ;
 int lru_crawler_lock ;
 int pthread_cond_wait (int *,int *) ;
 int pthread_create (int *,int *,int ,int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 TYPE_1__ settings ;
 int stderr ;
 char* strerror (int) ;

int start_item_crawler_thread(void) {
    int ret;

    if (settings.lru_crawler)
        return -1;
    pthread_mutex_lock(&lru_crawler_lock);
    do_run_lru_crawler_thread = 1;
    if ((ret = pthread_create(&item_crawler_tid, ((void*)0),
        item_crawler_thread, ((void*)0))) != 0) {
        fprintf(stderr, "Can't create LRU crawler thread: %s\n",
            strerror(ret));
        pthread_mutex_unlock(&lru_crawler_lock);
        return -1;
    }

    pthread_cond_wait(&lru_crawler_cond, &lru_crawler_lock);
    pthread_mutex_unlock(&lru_crawler_lock);

    return 0;
}

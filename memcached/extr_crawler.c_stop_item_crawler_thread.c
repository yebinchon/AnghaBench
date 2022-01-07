
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ do_run_lru_crawler_thread ;
 int fprintf (int ,char*,char*) ;
 int item_crawler_tid ;
 int lru_crawler_cond ;
 int lru_crawler_lock ;
 int pthread_cond_signal (int *) ;
 int pthread_join (int ,int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int stderr ;
 char* strerror (int) ;

int stop_item_crawler_thread(bool wait) {
    int ret;
    pthread_mutex_lock(&lru_crawler_lock);
    if (do_run_lru_crawler_thread == 0) {
        pthread_mutex_unlock(&lru_crawler_lock);
        return 0;
    }
    do_run_lru_crawler_thread = 0;
    pthread_cond_signal(&lru_crawler_cond);
    pthread_mutex_unlock(&lru_crawler_lock);
    if (wait && (ret = pthread_join(item_crawler_tid, ((void*)0))) != 0) {
        fprintf(stderr, "Failed to stop LRU crawler thread: %s\n", strerror(ret));
        return -1;
    }
    return 0;
}

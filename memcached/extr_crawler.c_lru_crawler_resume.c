
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int lru_crawler_lock ;
 int pthread_mutex_unlock (int *) ;

void lru_crawler_resume(void) {
    pthread_mutex_unlock(&lru_crawler_lock);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int lru_maintainer_lock ;
 int pthread_mutex_unlock (int *) ;

void lru_maintainer_resume(void) {
    pthread_mutex_unlock(&lru_maintainer_lock);
}

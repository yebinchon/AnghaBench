
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int lru_maintainer_lock ;
 int pthread_mutex_lock (int *) ;

void lru_maintainer_pause(void) {
    pthread_mutex_lock(&lru_maintainer_lock);
}

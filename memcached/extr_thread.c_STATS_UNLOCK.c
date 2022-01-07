
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pthread_mutex_unlock (int *) ;
 int stats_lock ;

void STATS_UNLOCK() {
    pthread_mutex_unlock(&stats_lock);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ age; int evicted; int outofmemory; } ;
typedef TYPE_1__ item_stats_automove ;
struct TYPE_7__ {int evicted; int outofmemory; } ;
struct TYPE_6__ {scalar_t__ time; } ;


 int COLD_LRU ;
 int HOT_LRU ;
 int MAX_NUMBER_OF_SLAB_CLASSES ;
 scalar_t__ current_time ;
 TYPE_3__* itemstats ;
 int * lru_locks ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 TYPE_2__** tails ;

void fill_item_stats_automove(item_stats_automove *am) {
    int n;
    for (n = 0; n < MAX_NUMBER_OF_SLAB_CLASSES; n++) {
        item_stats_automove *cur = &am[n];


        int i = n | HOT_LRU;
        pthread_mutex_lock(&lru_locks[i]);
        cur->outofmemory = itemstats[i].outofmemory;
        pthread_mutex_unlock(&lru_locks[i]);


        i = n | COLD_LRU;
        pthread_mutex_lock(&lru_locks[i]);
        cur->evicted = itemstats[i].evicted;
        if (tails[i]) {
            cur->age = current_time - tails[i]->time;
        } else {
            cur->age = 0;
        }
        pthread_mutex_unlock(&lru_locks[i]);
     }
}

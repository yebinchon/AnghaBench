
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int malloc_fails; } ;
struct TYPE_6__ {struct TYPE_6__* next; } ;
typedef TYPE_1__ CQ_ITEM ;


 int ITEMS_PER_ALLOC ;
 int STATS_LOCK () ;
 int STATS_UNLOCK () ;
 TYPE_1__* cqi_freelist ;
 int cqi_freelist_lock ;
 TYPE_1__* malloc (int) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 TYPE_2__ stats ;

__attribute__((used)) static CQ_ITEM *cqi_new(void) {
    CQ_ITEM *item = ((void*)0);
    pthread_mutex_lock(&cqi_freelist_lock);
    if (cqi_freelist) {
        item = cqi_freelist;
        cqi_freelist = item->next;
    }
    pthread_mutex_unlock(&cqi_freelist_lock);

    if (((void*)0) == item) {
        int i;


        item = malloc(sizeof(CQ_ITEM) * ITEMS_PER_ALLOC);
        if (((void*)0) == item) {
            STATS_LOCK();
            stats.malloc_fails++;
            STATS_UNLOCK();
            return ((void*)0);
        }






        for (i = 2; i < ITEMS_PER_ALLOC; i++)
            item[i - 1].next = &item[i];

        pthread_mutex_lock(&cqi_freelist_lock);
        item[ITEMS_PER_ALLOC - 1].next = cqi_freelist;
        cqi_freelist = &item[1];
        pthread_mutex_unlock(&cqi_freelist_lock);
    }

    return item;
}

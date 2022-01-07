
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int item ;
struct TYPE_4__ {int direct_reclaims; } ;
struct TYPE_3__ {scalar_t__ lru_segmented; } ;


 int COLD_LRU ;
 int HOT_LRU ;
 int LRU_PULL_EVICT ;
 TYPE_2__* itemstats ;
 int * lru_locks ;
 scalar_t__ lru_pull_tail (unsigned int const,int ,int ,int ,int ,int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 TYPE_1__ settings ;
 int * slabs_alloc (size_t const,unsigned int const,int ) ;

item *do_item_alloc_pull(const size_t ntotal, const unsigned int id) {
    item *it = ((void*)0);
    int i;






    for (i = 0; i < 10; i++) {

        if (!settings.lru_segmented) {
            lru_pull_tail(id, COLD_LRU, 0, 0, 0, ((void*)0));
        }
        it = slabs_alloc(ntotal, id, 0);

        if (it == ((void*)0)) {



            if (lru_pull_tail(id, COLD_LRU, 0, LRU_PULL_EVICT, 0, ((void*)0)) <= 0) {
                if (settings.lru_segmented) {
                    lru_pull_tail(id, HOT_LRU, 0, 0, 0, ((void*)0));
                } else {
                    break;
                }
            }
        } else {
            break;
        }
    }

    if (i > 0) {
        pthread_mutex_lock(&lru_locks[id]);
        itemstats[id].direct_reclaims += i;
        pthread_mutex_unlock(&lru_locks[id]);
    }

    return it;
}

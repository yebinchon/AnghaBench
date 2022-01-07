
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int rel_time_t ;
struct TYPE_4__ {int hot_max_factor; int warm_max_factor; scalar_t__ lru_segmented; scalar_t__ temp_lru; } ;
struct TYPE_3__ {int time; } ;


 int const COLD_LRU ;
 int const HOT_LRU ;
 int LRU_PULL_CRAWL_BLOCKS ;
 int const TEMP_LRU ;
 int const WARM_LRU ;
 int current_time ;
 int * lru_locks ;
 scalar_t__ lru_pull_tail (int const,int const,scalar_t__,int ,int,int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 TYPE_2__ settings ;
 scalar_t__* sizes_bytes ;
 int slabs_available_chunks (int const,int *,unsigned int*) ;
 TYPE_1__** tails ;

__attribute__((used)) static int lru_maintainer_juggle(const int slabs_clsid) {
    int i;
    int did_moves = 0;
    uint64_t total_bytes = 0;
    unsigned int chunks_perslab = 0;


    slabs_available_chunks(slabs_clsid, ((void*)0),
            &chunks_perslab);
    if (settings.temp_lru) {

        for (i = 0; i < 500; i++) {
            if (lru_pull_tail(slabs_clsid, TEMP_LRU, 0, 0, 0, ((void*)0)) <= 0) {
                break;
            } else {
                did_moves++;
            }
        }
    }

    rel_time_t cold_age = 0;
    rel_time_t hot_age = 0;
    rel_time_t warm_age = 0;

    if (settings.lru_segmented) {
        pthread_mutex_lock(&lru_locks[slabs_clsid|COLD_LRU]);
        if (tails[slabs_clsid|COLD_LRU]) {
            cold_age = current_time - tails[slabs_clsid|COLD_LRU]->time;
        }

        total_bytes += sizes_bytes[slabs_clsid|COLD_LRU];
        pthread_mutex_unlock(&lru_locks[slabs_clsid|COLD_LRU]);

        hot_age = cold_age * settings.hot_max_factor;
        warm_age = cold_age * settings.warm_max_factor;


        pthread_mutex_lock(&lru_locks[slabs_clsid|HOT_LRU]);
        total_bytes += sizes_bytes[slabs_clsid|HOT_LRU];
        pthread_mutex_unlock(&lru_locks[slabs_clsid|HOT_LRU]);

        pthread_mutex_lock(&lru_locks[slabs_clsid|WARM_LRU]);
        total_bytes += sizes_bytes[slabs_clsid|WARM_LRU];
        pthread_mutex_unlock(&lru_locks[slabs_clsid|WARM_LRU]);
    }


    for (i = 0; i < 500; i++) {
        int do_more = 0;
        if (lru_pull_tail(slabs_clsid, HOT_LRU, total_bytes, LRU_PULL_CRAWL_BLOCKS, hot_age, ((void*)0)) ||
            lru_pull_tail(slabs_clsid, WARM_LRU, total_bytes, LRU_PULL_CRAWL_BLOCKS, warm_age, ((void*)0))) {
            do_more++;
        }
        if (settings.lru_segmented) {
            do_more += lru_pull_tail(slabs_clsid, COLD_LRU, total_bytes, LRU_PULL_CRAWL_BLOCKS, 0, ((void*)0));
        }
        if (do_more == 0)
            break;
        did_moves++;
    }
    return did_moves;
}

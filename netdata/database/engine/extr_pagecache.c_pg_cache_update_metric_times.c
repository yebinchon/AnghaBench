
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* usec_t ;
struct rrdeng_page_descr {void* end_time; void* start_time; } ;
struct pg_cache_page_index {void* latest_time; void* oldest_time; int lock; int JudyL_array; } ;
typedef scalar_t__ Word_t ;
typedef struct rrdeng_page_descr* Pvoid_t ;


 void* INVALID_TIME ;
 struct rrdeng_page_descr** JudyLFirst (int ,scalar_t__*,int ) ;
 struct rrdeng_page_descr** JudyLLast (int ,scalar_t__*,int ) ;
 int PJE0 ;
 int assert (int) ;
 scalar_t__ likely (int) ;
 scalar_t__ unlikely (int) ;
 int uv_rwlock_rdlock (int *) ;
 int uv_rwlock_rdunlock (int *) ;

void pg_cache_update_metric_times(struct pg_cache_page_index *page_index)
{
    Pvoid_t *firstPValue, *lastPValue;
    Word_t firstIndex, lastIndex;
    struct rrdeng_page_descr *descr;
    usec_t oldest_time = INVALID_TIME;
    usec_t latest_time = INVALID_TIME;

    uv_rwlock_rdlock(&page_index->lock);

    firstIndex = (Word_t)0;
    firstPValue = JudyLFirst(page_index->JudyL_array, &firstIndex, PJE0);
    if (likely(((void*)0) != firstPValue)) {
        descr = *firstPValue;
        oldest_time = descr->start_time;
    }
    lastIndex = (Word_t)-1;
    lastPValue = JudyLLast(page_index->JudyL_array, &lastIndex, PJE0);
    if (likely(((void*)0) != lastPValue)) {
        descr = *lastPValue;
        latest_time = descr->end_time;
    }
    uv_rwlock_rdunlock(&page_index->lock);

    if (unlikely(((void*)0) == firstPValue)) {
        assert(((void*)0) == lastPValue);
        page_index->oldest_time = page_index->latest_time = INVALID_TIME;
        return;
    }
    page_index->oldest_time = oldest_time;
    page_index->latest_time = latest_time;
}

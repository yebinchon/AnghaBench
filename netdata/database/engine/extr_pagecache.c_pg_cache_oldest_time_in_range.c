
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uuid_t ;
typedef int usec_t ;
struct TYPE_2__ {int lock; int JudyHS_array; } ;
struct page_cache {TYPE_1__ metrics_index; } ;
struct rrdengine_instance {struct page_cache pg_cache; } ;
struct rrdeng_page_descr {int start_time; } ;
struct pg_cache_page_index {int lock; } ;
typedef struct pg_cache_page_index* Pvoid_t ;


 int INVALID_TIME ;
 struct pg_cache_page_index** JudyHSGet (int ,int *,int) ;
 struct rrdeng_page_descr* find_first_page_in_time_range (struct pg_cache_page_index*,int ,int ) ;
 scalar_t__ likely (int) ;
 int uv_rwlock_rdlock (int *) ;
 int uv_rwlock_rdunlock (int *) ;

usec_t pg_cache_oldest_time_in_range(struct rrdengine_instance *ctx, uuid_t *id, usec_t start_time, usec_t end_time)
{
    struct page_cache *pg_cache = &ctx->pg_cache;
    struct rrdeng_page_descr *descr = ((void*)0);
    Pvoid_t *PValue;
    struct pg_cache_page_index *page_index;

    uv_rwlock_rdlock(&pg_cache->metrics_index.lock);
    PValue = JudyHSGet(pg_cache->metrics_index.JudyHS_array, id, sizeof(uuid_t));
    if (likely(((void*)0) != PValue)) {
        page_index = *PValue;
    }
    uv_rwlock_rdunlock(&pg_cache->metrics_index.lock);
    if (((void*)0) == PValue) {
        return INVALID_TIME;
    }

    uv_rwlock_rdlock(&page_index->lock);
    descr = find_first_page_in_time_range(page_index, start_time, end_time);
    if (((void*)0) == descr) {
        uv_rwlock_rdunlock(&page_index->lock);
        return INVALID_TIME;
    }
    uv_rwlock_rdunlock(&page_index->lock);
    return descr->start_time;
}

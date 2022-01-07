
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; struct page_cache_descr* head; } ;
struct page_cache {TYPE_1__ replaceQ; } ;
struct rrdengine_instance {struct page_cache pg_cache; } ;
struct rrdeng_page_descr {int dummy; } ;
struct page_cache_descr {unsigned long flags; struct rrdeng_page_descr* descr; struct page_cache_descr* next; } ;


 unsigned long RRD_PAGE_DIRTY ;
 unsigned long RRD_PAGE_POPULATED ;
 int pg_cache_evict_unsafe (struct rrdengine_instance*,struct rrdeng_page_descr*) ;
 int pg_cache_put_unsafe (struct rrdeng_page_descr*) ;
 int pg_cache_replaceQ_delete_unsafe (struct rrdengine_instance*,struct rrdeng_page_descr*) ;
 scalar_t__ pg_cache_try_get_unsafe (struct rrdeng_page_descr*,int) ;
 int rrdeng_page_descr_mutex_lock (struct rrdengine_instance*,struct rrdeng_page_descr*) ;
 int rrdeng_page_descr_mutex_unlock (struct rrdengine_instance*,struct rrdeng_page_descr*) ;
 int rrdeng_try_deallocate_pg_cache_descr (struct rrdengine_instance*,struct rrdeng_page_descr*) ;
 int uv_rwlock_wrlock (int *) ;
 int uv_rwlock_wrunlock (int *) ;

__attribute__((used)) static int pg_cache_try_evict_one_page_unsafe(struct rrdengine_instance *ctx)
{
    struct page_cache *pg_cache = &ctx->pg_cache;
    unsigned long old_flags;
    struct rrdeng_page_descr *descr;
    struct page_cache_descr *pg_cache_descr = ((void*)0);

    uv_rwlock_wrlock(&pg_cache->replaceQ.lock);
    for (pg_cache_descr = pg_cache->replaceQ.head ; ((void*)0) != pg_cache_descr ; pg_cache_descr = pg_cache_descr->next) {
        descr = pg_cache_descr->descr;

        rrdeng_page_descr_mutex_lock(ctx, descr);
        old_flags = pg_cache_descr->flags;
        if ((old_flags & RRD_PAGE_POPULATED) && !(old_flags & RRD_PAGE_DIRTY) && pg_cache_try_get_unsafe(descr, 1)) {

            pg_cache_evict_unsafe(ctx, descr);
            pg_cache_put_unsafe(descr);
            pg_cache_replaceQ_delete_unsafe(ctx, descr);

            rrdeng_page_descr_mutex_unlock(ctx, descr);
            uv_rwlock_wrunlock(&pg_cache->replaceQ.lock);

            rrdeng_try_deallocate_pg_cache_descr(ctx, descr);

            return 1;
        }
        rrdeng_page_descr_mutex_unlock(ctx, descr);
    }
    uv_rwlock_wrunlock(&pg_cache->replaceQ.lock);


    return 0;
}

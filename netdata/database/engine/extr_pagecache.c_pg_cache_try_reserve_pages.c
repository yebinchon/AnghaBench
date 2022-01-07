
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page_cache {unsigned int populated_pages; int pg_cache_rwlock; } ;
struct rrdengine_instance {unsigned int max_cache_pages; struct page_cache pg_cache; } ;


 int D_RRDENGINE ;
 int assert (int) ;
 int debug (int ,char*,unsigned int) ;
 unsigned int pg_cache_hard_limit (struct rrdengine_instance*) ;
 unsigned int pg_cache_soft_limit (struct rrdengine_instance*) ;
 int pg_cache_try_evict_one_page_unsafe (struct rrdengine_instance*) ;
 int uv_rwlock_wrlock (int *) ;
 int uv_rwlock_wrunlock (int *) ;

__attribute__((used)) static int pg_cache_try_reserve_pages(struct rrdengine_instance *ctx, unsigned number)
{
    struct page_cache *pg_cache = &ctx->pg_cache;
    unsigned count = 0;
    int ret = 0;

    assert(number < ctx->max_cache_pages);

    uv_rwlock_wrlock(&pg_cache->pg_cache_rwlock);
    if (pg_cache->populated_pages + number >= pg_cache_soft_limit(ctx) + 1) {
        debug(D_RRDENGINE,
              "==Page cache full. Trying to reserve %u pages.==",
              number);
        do {
            if (!pg_cache_try_evict_one_page_unsafe(ctx))
                break;
            ++count;
        } while (pg_cache->populated_pages + number >= pg_cache_soft_limit(ctx) + 1);
        debug(D_RRDENGINE, "Evicted %u pages.", count);
    }

    if (pg_cache->populated_pages + number < pg_cache_hard_limit(ctx) + 1) {
        pg_cache->populated_pages += number;
        ret = 1;
    }
    uv_rwlock_wrunlock(&pg_cache->pg_cache_rwlock);

    return ret;
}

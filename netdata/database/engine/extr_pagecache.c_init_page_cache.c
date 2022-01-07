
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page_cache {int pg_cache_rwlock; scalar_t__ populated_pages; scalar_t__ page_descriptors; } ;
struct rrdengine_instance {struct page_cache pg_cache; } ;


 int assert (int) ;
 int init_committed_page_index (struct rrdengine_instance*) ;
 int init_metrics_index (struct rrdengine_instance*) ;
 int init_replaceQ (struct rrdengine_instance*) ;
 scalar_t__ uv_rwlock_init (int *) ;

void init_page_cache(struct rrdengine_instance *ctx)
{
    struct page_cache *pg_cache = &ctx->pg_cache;

    pg_cache->page_descriptors = 0;
    pg_cache->populated_pages = 0;
    assert(0 == uv_rwlock_init(&pg_cache->pg_cache_rwlock));

    init_metrics_index(ctx);
    init_replaceQ(ctx);
    init_committed_page_index(ctx);
}

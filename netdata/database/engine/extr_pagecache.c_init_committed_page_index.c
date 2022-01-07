
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ nr_committed_pages; scalar_t__ latest_corr_id; int lock; scalar_t__ JudyL_array; } ;
struct page_cache {TYPE_1__ committed_page_index; } ;
struct rrdengine_instance {struct page_cache pg_cache; } ;
typedef scalar_t__ Pvoid_t ;


 int assert (int) ;
 scalar_t__ uv_rwlock_init (int *) ;

__attribute__((used)) static void init_committed_page_index(struct rrdengine_instance *ctx)
{
    struct page_cache *pg_cache = &ctx->pg_cache;

    pg_cache->committed_page_index.JudyL_array = (Pvoid_t) ((void*)0);
    assert(0 == uv_rwlock_init(&pg_cache->committed_page_index.lock));
    pg_cache->committed_page_index.latest_corr_id = 0;
    pg_cache->committed_page_index.nr_committed_pages = 0;
}

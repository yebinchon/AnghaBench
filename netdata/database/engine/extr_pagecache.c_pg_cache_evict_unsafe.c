
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pg_cache_evictions; } ;
struct rrdengine_instance {TYPE_1__ stats; } ;
struct rrdeng_page_descr {struct page_cache_descr* pg_cache_descr; } ;
struct page_cache_descr {int flags; int * page; } ;


 int RRD_PAGE_POPULATED ;
 int freez (int *) ;
 int pg_cache_release_pages_unsafe (struct rrdengine_instance*,int) ;

__attribute__((used)) static void pg_cache_evict_unsafe(struct rrdengine_instance *ctx, struct rrdeng_page_descr *descr)
{
    struct page_cache_descr *pg_cache_descr = descr->pg_cache_descr;

    freez(pg_cache_descr->page);
    pg_cache_descr->page = ((void*)0);
    pg_cache_descr->flags &= ~RRD_PAGE_POPULATED;
    pg_cache_release_pages_unsafe(ctx, 1);
    ++ctx->stats.pg_cache_evictions;
}

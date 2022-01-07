
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int page_cache_descriptors; } ;
struct rrdengine_instance {TYPE_1__ stats; } ;
struct page_cache_descr {int mutex; int cond; } ;


 int freez (struct page_cache_descr*) ;
 int rrd_stat_atomic_add (int *,int) ;
 int uv_cond_destroy (int *) ;
 int uv_mutex_destroy (int *) ;

void rrdeng_destroy_pg_cache_descr(struct rrdengine_instance *ctx, struct page_cache_descr *pg_cache_descr)
{
    uv_cond_destroy(&pg_cache_descr->cond);
    uv_mutex_destroy(&pg_cache_descr->mutex);
    freez(pg_cache_descr);
    rrd_stat_atomic_add(&ctx->stats.page_cache_descriptors, -1);
}

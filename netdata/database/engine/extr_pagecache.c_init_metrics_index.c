
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; int * last_page_index; scalar_t__ JudyHS_array; } ;
struct page_cache {TYPE_1__ metrics_index; } ;
struct rrdengine_instance {struct page_cache pg_cache; } ;
typedef scalar_t__ Pvoid_t ;


 int assert (int) ;
 scalar_t__ uv_rwlock_init (int *) ;

__attribute__((used)) static void init_metrics_index(struct rrdengine_instance *ctx)
{
    struct page_cache *pg_cache = &ctx->pg_cache;

    pg_cache->metrics_index.JudyHS_array = (Pvoid_t) ((void*)0);
    pg_cache->metrics_index.last_page_index = ((void*)0);
    assert(0 == uv_rwlock_init(&pg_cache->metrics_index.lock));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; int * tail; int * head; } ;
struct page_cache {TYPE_1__ replaceQ; } ;
struct rrdengine_instance {struct page_cache pg_cache; } ;


 int assert (int) ;
 scalar_t__ uv_rwlock_init (int *) ;

__attribute__((used)) static void init_replaceQ(struct rrdengine_instance *ctx)
{
    struct page_cache *pg_cache = &ctx->pg_cache;

    pg_cache->replaceQ.head = ((void*)0);
    pg_cache->replaceQ.tail = ((void*)0);
    assert(0 == uv_rwlock_init(&pg_cache->replaceQ.lock));
}

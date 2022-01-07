
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct idmap_cache {int lock; struct cache_ops const* ops; int head; } ;
struct cache_ops {int dummy; } ;


 int InitializeSRWLock (int *) ;
 int list_init (int *) ;

__attribute__((used)) static void cache_init(
    struct idmap_cache *cache,
    const struct cache_ops *ops)
{
    list_init(&cache->head);
    cache->ops = ops;
    InitializeSRWLock(&cache->lock);
}

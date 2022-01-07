
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int table; int lock; } ;
struct TYPE_4__ {int lock; } ;
struct TYPE_6__ {int evicted; int misses; int hits; } ;
struct cache {TYPE_2__ hash; TYPE_1__ queue; int flags; TYPE_3__ stats; } ;


 int SHUTTING_DOWN ;
 int assert (struct cache*) ;
 int cache_pruner_job (struct cache*) ;
 int free (struct cache*) ;
 int hash_free (int ) ;
 int lwan_job_del (int (*) (struct cache*),struct cache*) ;
 int lwan_status_debug (char*,int ,int ,int ) ;
 int pthread_rwlock_destroy (int *) ;

void cache_destroy(struct cache *cache)
{
    assert(cache);


    lwan_status_debug("Cache stats: %d hits, %d misses, %d evictions",
                      cache->stats.hits, cache->stats.misses,
                      cache->stats.evicted);


    lwan_job_del(cache_pruner_job, cache);
    cache->flags |= SHUTTING_DOWN;
    cache_pruner_job(cache);
    pthread_rwlock_destroy(&cache->hash.lock);
    pthread_rwlock_destroy(&cache->queue.lock);
    hash_free(cache->hash.table);
    free(cache);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ time_t ;
struct TYPE_8__ {int table; int lock; } ;
struct TYPE_7__ {int list; int lock; } ;
struct TYPE_6__ {scalar_t__ time_to_live; } ;
struct TYPE_5__ {int create_entry; int destroy_entry; void* context; } ;
struct cache {TYPE_4__ hash; TYPE_3__ queue; TYPE_2__ settings; TYPE_1__ cb; } ;
typedef int cache_destroy_entry_cb ;
typedef int cache_create_entry_cb ;


 int assert (int) ;
 int cache_pruner_job ;
 struct cache* calloc (int,int) ;
 int free (struct cache*) ;
 int hash_free (int ) ;
 int hash_str_new (int (*) (struct cache*),int *) ;
 int list_head_init (int *) ;
 int lwan_job_add (int ,struct cache*) ;
 int pthread_rwlock_destroy (int *) ;
 scalar_t__ pthread_rwlock_init (int *,int *) ;

struct cache *cache_create(cache_create_entry_cb create_entry_cb,
                             cache_destroy_entry_cb destroy_entry_cb,
                             void *cb_context,
                             time_t time_to_live)
{
    struct cache *cache;

    assert(create_entry_cb);
    assert(destroy_entry_cb);
    assert(time_to_live > 0);

    cache = calloc(1, sizeof(*cache));
    if (!cache)
        return ((void*)0);

    cache->hash.table = hash_str_new(free, ((void*)0));
    if (!cache->hash.table)
        goto error_no_hash;

    if (pthread_rwlock_init(&cache->hash.lock, ((void*)0)))
        goto error_no_hash_lock;
    if (pthread_rwlock_init(&cache->queue.lock, ((void*)0)))
        goto error_no_queue_lock;

    cache->cb.create_entry = create_entry_cb;
    cache->cb.destroy_entry = destroy_entry_cb;
    cache->cb.context = cb_context;

    cache->settings.time_to_live = time_to_live;

    list_head_init(&cache->queue.list);

    lwan_job_add(cache_pruner_job, cache);

    return cache;

error_no_queue_lock:
    pthread_rwlock_destroy(&cache->hash.lock);
error_no_hash_lock:
    hash_free(cache->hash.table);
error_no_hash:
    free(cache);

    return ((void*)0);
}

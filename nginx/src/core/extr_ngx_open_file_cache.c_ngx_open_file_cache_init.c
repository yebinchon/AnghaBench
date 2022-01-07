
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int time_t ;
typedef int ngx_uint_t ;
typedef int ngx_pool_t ;
struct TYPE_6__ {TYPE_2__* data; int handler; } ;
typedef TYPE_1__ ngx_pool_cleanup_t ;
struct TYPE_7__ {int inactive; int max; scalar_t__ current; int expire_queue; int sentinel; int rbtree; } ;
typedef TYPE_2__ ngx_open_file_cache_t ;


 int ngx_open_file_cache_cleanup ;
 int ngx_open_file_cache_rbtree_insert_value ;
 TYPE_2__* ngx_palloc (int *,int) ;
 TYPE_1__* ngx_pool_cleanup_add (int *,int ) ;
 int ngx_queue_init (int *) ;
 int ngx_rbtree_init (int *,int *,int ) ;

ngx_open_file_cache_t *
ngx_open_file_cache_init(ngx_pool_t *pool, ngx_uint_t max, time_t inactive)
{
    ngx_pool_cleanup_t *cln;
    ngx_open_file_cache_t *cache;

    cache = ngx_palloc(pool, sizeof(ngx_open_file_cache_t));
    if (cache == ((void*)0)) {
        return ((void*)0);
    }

    ngx_rbtree_init(&cache->rbtree, &cache->sentinel,
                    ngx_open_file_cache_rbtree_insert_value);

    ngx_queue_init(&cache->expire_queue);

    cache->current = 0;
    cache->max = max;
    cache->inactive = inactive;

    cln = ngx_pool_cleanup_add(pool, 0);
    if (cln == ((void*)0)) {
        return ((void*)0);
    }

    cln->handler = ngx_open_file_cache_cleanup;
    cln->data = cache;

    return cache;
}

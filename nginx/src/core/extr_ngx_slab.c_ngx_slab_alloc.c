
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mutex; } ;
typedef TYPE_1__ ngx_slab_pool_t ;


 int ngx_shmtx_lock (int *) ;
 int ngx_shmtx_unlock (int *) ;
 void* ngx_slab_alloc_locked (TYPE_1__*,size_t) ;

void *
ngx_slab_alloc(ngx_slab_pool_t *pool, size_t size)
{
    void *p;

    ngx_shmtx_lock(&pool->mutex);

    p = ngx_slab_alloc_locked(pool, size);

    ngx_shmtx_unlock(&pool->mutex);

    return p;
}

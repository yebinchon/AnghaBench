
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ngx_slab_pool_t ;


 int ngx_memzero (void*,size_t) ;
 void* ngx_slab_alloc_locked (int *,size_t) ;

void *
ngx_slab_calloc_locked(ngx_slab_pool_t *pool, size_t size)
{
    void *p;

    p = ngx_slab_alloc_locked(pool, size);
    if (p) {
        ngx_memzero(p, size);
    }

    return p;
}

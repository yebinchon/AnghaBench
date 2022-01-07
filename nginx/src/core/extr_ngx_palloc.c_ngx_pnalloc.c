
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t max; } ;
typedef TYPE_1__ ngx_pool_t ;


 void* ngx_palloc_large (TYPE_1__*,size_t) ;
 void* ngx_palloc_small (TYPE_1__*,size_t,int ) ;

void *
ngx_pnalloc(ngx_pool_t *pool, size_t size)
{

    if (size <= pool->max) {
        return ngx_palloc_small(pool, size, 0);
    }


    return ngx_palloc_large(pool, size);
}

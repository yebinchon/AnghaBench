
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ ngx_uint_t ;
struct TYPE_6__ {TYPE_2__* large; int log; } ;
typedef TYPE_1__ ngx_pool_t ;
struct TYPE_7__ {struct TYPE_7__* next; int * alloc; } ;
typedef TYPE_2__ ngx_pool_large_t ;


 void* ngx_alloc (size_t,int ) ;
 int ngx_free (void*) ;
 TYPE_2__* ngx_palloc_small (TYPE_1__*,int,int) ;

__attribute__((used)) static void *
ngx_palloc_large(ngx_pool_t *pool, size_t size)
{
    void *p;
    ngx_uint_t n;
    ngx_pool_large_t *large;

    p = ngx_alloc(size, pool->log);
    if (p == ((void*)0)) {
        return ((void*)0);
    }

    n = 0;

    for (large = pool->large; large; large = large->next) {
        if (large->alloc == ((void*)0)) {
            large->alloc = p;
            return p;
        }

        if (n++ > 3) {
            break;
        }
    }

    large = ngx_palloc_small(pool, sizeof(ngx_pool_large_t), 1);
    if (large == ((void*)0)) {
        ngx_free(p);
        return ((void*)0);
    }

    large->alloc = p;
    large->next = pool->large;
    pool->large = large;

    return p;
}

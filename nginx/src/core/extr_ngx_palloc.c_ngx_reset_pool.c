
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_5__ {scalar_t__ failed; int * last; TYPE_2__* next; } ;
struct TYPE_6__ {TYPE_3__* large; int * chain; struct TYPE_6__* current; TYPE_1__ d; } ;
typedef TYPE_2__ ngx_pool_t ;
struct TYPE_7__ {scalar_t__ alloc; struct TYPE_7__* next; } ;
typedef TYPE_3__ ngx_pool_large_t ;


 int ngx_free (scalar_t__) ;

void
ngx_reset_pool(ngx_pool_t *pool)
{
    ngx_pool_t *p;
    ngx_pool_large_t *l;

    for (l = pool->large; l; l = l->next) {
        if (l->alloc) {
            ngx_free(l->alloc);
        }
    }

    for (p = pool; p; p = p->d.next) {
        p->d.last = (u_char *) p + sizeof(ngx_pool_t);
        p->d.failed = 0;
    }

    pool->current = pool;
    pool->chain = ((void*)0);
    pool->large = ((void*)0);
}

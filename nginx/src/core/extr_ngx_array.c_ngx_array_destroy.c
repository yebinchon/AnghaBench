
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_5__ {int * last; } ;
struct TYPE_6__ {TYPE_1__ d; } ;
typedef TYPE_2__ ngx_pool_t ;
struct TYPE_7__ {int size; int nalloc; scalar_t__ elts; TYPE_2__* pool; } ;
typedef TYPE_3__ ngx_array_t ;



void
ngx_array_destroy(ngx_array_t *a)
{
    ngx_pool_t *p;

    p = a->pool;

    if ((u_char *) a->elts + a->size * a->nalloc == p->d.last) {
        p->d.last -= a->size * a->nalloc;
    }

    if ((u_char *) a + sizeof(ngx_array_t) == p->d.last) {
        p->d.last = (u_char *) a;
    }
}

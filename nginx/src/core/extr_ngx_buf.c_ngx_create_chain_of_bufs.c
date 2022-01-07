
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u_char ;
typedef int ngx_pool_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_8__ {struct TYPE_8__* next; TYPE_3__* buf; } ;
typedef TYPE_1__ ngx_chain_t ;
struct TYPE_9__ {int num; int size; } ;
typedef TYPE_2__ ngx_bufs_t ;
struct TYPE_10__ {int temporary; int * end; int * start; int * last; int * pos; } ;
typedef TYPE_3__ ngx_buf_t ;


 TYPE_1__* ngx_alloc_chain_link (int *) ;
 TYPE_3__* ngx_calloc_buf (int *) ;
 int * ngx_palloc (int *,int) ;

ngx_chain_t *
ngx_create_chain_of_bufs(ngx_pool_t *pool, ngx_bufs_t *bufs)
{
    u_char *p;
    ngx_int_t i;
    ngx_buf_t *b;
    ngx_chain_t *chain, *cl, **ll;

    p = ngx_palloc(pool, bufs->num * bufs->size);
    if (p == ((void*)0)) {
        return ((void*)0);
    }

    ll = &chain;

    for (i = 0; i < bufs->num; i++) {

        b = ngx_calloc_buf(pool);
        if (b == ((void*)0)) {
            return ((void*)0);
        }
        b->pos = p;
        b->last = p;
        b->temporary = 1;

        b->start = p;
        p += bufs->size;
        b->end = p;

        cl = ngx_alloc_chain_link(pool);
        if (cl == ((void*)0)) {
            return ((void*)0);
        }

        cl->buf = b;
        *ll = cl;
        ll = &cl->next;
    }

    *ll = ((void*)0);

    return chain;
}

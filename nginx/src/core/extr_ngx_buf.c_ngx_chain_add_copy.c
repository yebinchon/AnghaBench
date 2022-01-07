
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int ngx_pool_t ;
typedef int ngx_int_t ;
struct TYPE_5__ {struct TYPE_5__* next; int buf; } ;
typedef TYPE_1__ ngx_chain_t ;


 int NGX_ERROR ;
 int NGX_OK ;
 TYPE_1__* ngx_alloc_chain_link (int *) ;

ngx_int_t
ngx_chain_add_copy(ngx_pool_t *pool, ngx_chain_t **chain, ngx_chain_t *in)
{
    ngx_chain_t *cl, **ll;

    ll = chain;

    for (cl = *chain; cl; cl = cl->next) {
        ll = &cl->next;
    }

    while (in) {
        cl = ngx_alloc_chain_link(pool);
        if (cl == ((void*)0)) {
            *ll = ((void*)0);
            return NGX_ERROR;
        }

        cl->buf = in->buf;
        *ll = cl;
        ll = &cl->next;
        in = in->next;
    }

    *ll = ((void*)0);

    return NGX_OK;
}

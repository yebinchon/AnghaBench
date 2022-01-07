
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int ngx_pool_t ;
struct TYPE_5__ {struct TYPE_5__* next; int * buf; } ;
typedef TYPE_1__ ngx_chain_t ;


 TYPE_1__* ngx_alloc_chain_link (int *) ;
 int * ngx_calloc_buf (int *) ;

ngx_chain_t *
ngx_chain_get_free_buf(ngx_pool_t *p, ngx_chain_t **free)
{
    ngx_chain_t *cl;

    if (*free) {
        cl = *free;
        *free = cl->next;
        cl->next = ((void*)0);
        return cl;
    }

    cl = ngx_alloc_chain_link(p);
    if (cl == ((void*)0)) {
        return ((void*)0);
    }

    cl->buf = ngx_calloc_buf(p);
    if (cl->buf == ((void*)0)) {
        return ((void*)0);
    }

    cl->next = ((void*)0);

    return cl;
}

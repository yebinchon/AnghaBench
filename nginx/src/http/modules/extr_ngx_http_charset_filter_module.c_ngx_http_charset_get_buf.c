
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int ngx_pool_t ;
struct TYPE_7__ {TYPE_2__* free_bufs; } ;
typedef TYPE_1__ ngx_http_charset_ctx_t ;
struct TYPE_8__ {TYPE_5__* buf; struct TYPE_8__* next; } ;
typedef TYPE_2__ ngx_chain_t ;
typedef scalar_t__ ngx_buf_tag_t ;
struct TYPE_9__ {scalar_t__ tag; int * shadow; } ;


 TYPE_2__* ngx_alloc_chain_link (int *) ;
 TYPE_5__* ngx_calloc_buf (int *) ;
 int ngx_http_charset_filter_module ;

__attribute__((used)) static ngx_chain_t *
ngx_http_charset_get_buf(ngx_pool_t *pool, ngx_http_charset_ctx_t *ctx)
{
    ngx_chain_t *cl;

    cl = ctx->free_bufs;

    if (cl) {
        ctx->free_bufs = cl->next;

        cl->buf->shadow = ((void*)0);
        cl->next = ((void*)0);

        return cl;
    }

    cl = ngx_alloc_chain_link(pool);
    if (cl == ((void*)0)) {
        return ((void*)0);
    }

    cl->buf = ngx_calloc_buf(pool);
    if (cl->buf == ((void*)0)) {
        return ((void*)0);
    }

    cl->next = ((void*)0);

    cl->buf->tag = (ngx_buf_tag_t) &ngx_http_charset_filter_module;

    return cl;
}

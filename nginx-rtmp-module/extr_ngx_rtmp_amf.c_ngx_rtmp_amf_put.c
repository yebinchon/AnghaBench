
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_6__ {TYPE_2__* link; TYPE_2__* first; int arg; TYPE_2__* (* alloc ) (int ) ;int log; } ;
typedef TYPE_1__ ngx_rtmp_amf_ctx_t ;
typedef int ngx_int_t ;
struct TYPE_7__ {TYPE_3__* buf; struct TYPE_7__* next; } ;
typedef TYPE_2__ ngx_chain_t ;
struct TYPE_8__ {scalar_t__ last; scalar_t__ end; } ;
typedef TYPE_3__ ngx_buf_t ;


 int NGX_ERROR ;
 int NGX_OK ;
 void* ngx_cpymem (size_t,void*,size_t) ;
 int ngx_rtmp_amf_debug (char*,int ,int *,size_t) ;
 TYPE_2__* stub1 (int ) ;

__attribute__((used)) static ngx_int_t
ngx_rtmp_amf_put(ngx_rtmp_amf_ctx_t *ctx, void *p, size_t n)
{
    ngx_buf_t *b;
    size_t size;
    ngx_chain_t *l, *ln;





    l = ctx->link;

    if (ctx->link && ctx->first == ((void*)0)) {
        ctx->first = ctx->link;
    }

    while(n) {
        b = l ? l->buf : ((void*)0);

        if (b == ((void*)0) || b->last == b->end) {

            ln = ctx->alloc(ctx->arg);
            if (ln == ((void*)0)) {
                return NGX_ERROR;
            }

            if (ctx->first == ((void*)0)) {
                ctx->first = ln;
            }

            if (l) {
                l->next = ln;
            }

            l = ln;
            ctx->link = l;
            b = l->buf;
        }

        size = b->end - b->last;

        if (size >= n) {
            b->last = ngx_cpymem(b->last, p, n);
            return NGX_OK;
        }

        b->last = ngx_cpymem(b->last, p, size);
        p = (u_char*)p + size;
        n -= size;
    }

    return NGX_OK;
}

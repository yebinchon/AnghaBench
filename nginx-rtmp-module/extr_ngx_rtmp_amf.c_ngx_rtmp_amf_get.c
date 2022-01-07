
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_6__ {size_t offset; int log; TYPE_3__* link; } ;
typedef TYPE_2__ ngx_rtmp_amf_ctx_t ;
typedef int ngx_int_t ;
struct TYPE_7__ {TYPE_1__* buf; struct TYPE_7__* next; } ;
typedef TYPE_3__ ngx_chain_t ;
struct TYPE_5__ {int * last; int * pos; } ;


 int NGX_DONE ;
 int NGX_LOG_DEBUG_RTMP ;
 int NGX_OK ;
 void* ngx_cpymem (void*,int *,size_t) ;
 int ngx_log_debug1 (int ,int ,int ,char*,size_t) ;
 int ngx_rtmp_amf_debug (char*,int ,int *,size_t) ;

__attribute__((used)) static ngx_int_t
ngx_rtmp_amf_get(ngx_rtmp_amf_ctx_t *ctx, void *p, size_t n)
{
    size_t size;
    ngx_chain_t *l;
    size_t offset;
    u_char *pos, *last;





    if (!n)
        return NGX_OK;

    for(l = ctx->link, offset = ctx->offset; l; l = l->next, offset = 0) {

        pos = l->buf->pos + offset;
        last = l->buf->last;

        if (last >= pos + n) {
            if (p) {
                p = ngx_cpymem(p, pos, n);
            }
            ctx->offset = offset + n;
            ctx->link = l;





            return NGX_OK;
        }

        size = last - pos;

        if (p) {
            p = ngx_cpymem(p, pos, size);
        }

        n -= size;
    }

    ngx_log_debug1(NGX_LOG_DEBUG_RTMP, ctx->log, 0,
            "AMF read eof (%d)", n);

    return NGX_DONE;
}

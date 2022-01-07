
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ ngx_uint_t ;
typedef int ngx_rtmp_session_t ;
typedef int ngx_rtmp_record_rec_ctx_t ;
struct TYPE_4__ {scalar_t__ nelts; int * elts; } ;
struct TYPE_5__ {TYPE_1__ rec; } ;
typedef TYPE_2__ ngx_rtmp_record_ctx_t ;
typedef int ngx_rtmp_header_t ;
typedef int ngx_int_t ;
typedef int ngx_chain_t ;


 int NGX_OK ;
 TYPE_2__* ngx_rtmp_get_module_ctx (int *,int ) ;
 int ngx_rtmp_record_module ;
 int ngx_rtmp_record_node_av (int *,int *,int *,int *) ;

__attribute__((used)) static ngx_int_t
ngx_rtmp_record_av(ngx_rtmp_session_t *s, ngx_rtmp_header_t *h,
                   ngx_chain_t *in)
{
    ngx_rtmp_record_ctx_t *ctx;
    ngx_rtmp_record_rec_ctx_t *rctx;
    ngx_uint_t n;

    ctx = ngx_rtmp_get_module_ctx(s, ngx_rtmp_record_module);

    if (ctx == ((void*)0)) {
        return NGX_OK;
    }

    rctx = ctx->rec.elts;

    for (n = 0; n < ctx->rec.nelts; ++n, ++rctx) {
        ngx_rtmp_record_node_av(s, rctx, h, in);
    }

    return NGX_OK;
}

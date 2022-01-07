
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t ngx_uint_t ;
typedef int ngx_rtmp_session_t ;
typedef int ngx_rtmp_record_rec_ctx_t ;
struct TYPE_4__ {size_t nelts; int * elts; } ;
struct TYPE_5__ {TYPE_1__ rec; } ;
typedef TYPE_2__ ngx_rtmp_record_ctx_t ;


 scalar_t__ NGX_OK ;
 TYPE_2__* ngx_rtmp_get_module_ctx (int *,int ) ;
 scalar_t__ ngx_rtmp_record_init (int *) ;
 int ngx_rtmp_record_module ;

__attribute__((used)) static ngx_rtmp_record_rec_ctx_t *
ngx_rtmp_record_get_node_ctx(ngx_rtmp_session_t *s, ngx_uint_t n)
{
    ngx_rtmp_record_ctx_t *ctx;
    ngx_rtmp_record_rec_ctx_t *rctx;

    if (ngx_rtmp_record_init(s) != NGX_OK) {
        return ((void*)0);
    }

    ctx = ngx_rtmp_get_module_ctx(s, ngx_rtmp_record_module);

    if (n >= ctx->rec.nelts) {
        return ((void*)0);
    }

    rctx = ctx->rec.elts;

    return &rctx[n];
}

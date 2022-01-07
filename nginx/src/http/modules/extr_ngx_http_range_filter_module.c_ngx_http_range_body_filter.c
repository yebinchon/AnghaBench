
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int ngx_int_t ;
typedef int ngx_http_request_t ;
struct TYPE_13__ {int nelts; } ;
struct TYPE_14__ {TYPE_1__ ranges; } ;
typedef TYPE_2__ ngx_http_range_filter_ctx_t ;
struct TYPE_15__ {int buf; } ;
typedef TYPE_3__ ngx_chain_t ;


 int NGX_ERROR ;
 scalar_t__ NGX_OK ;
 scalar_t__ ngx_buf_special (int ) ;
 TYPE_2__* ngx_http_get_module_ctx (int *,int ) ;
 int ngx_http_next_body_filter (int *,TYPE_3__*) ;
 int ngx_http_range_body_filter_module ;
 int ngx_http_range_multipart_body (int *,TYPE_2__*,TYPE_3__*) ;
 int ngx_http_range_singlepart_body (int *,TYPE_2__*,TYPE_3__*) ;
 scalar_t__ ngx_http_range_test_overlapped (int *,TYPE_2__*,TYPE_3__*) ;

__attribute__((used)) static ngx_int_t
ngx_http_range_body_filter(ngx_http_request_t *r, ngx_chain_t *in)
{
    ngx_http_range_filter_ctx_t *ctx;

    if (in == ((void*)0)) {
        return ngx_http_next_body_filter(r, in);
    }

    ctx = ngx_http_get_module_ctx(r, ngx_http_range_body_filter_module);

    if (ctx == ((void*)0)) {
        return ngx_http_next_body_filter(r, in);
    }

    if (ctx->ranges.nelts == 1) {
        return ngx_http_range_singlepart_body(r, ctx, in);
    }





    if (ngx_buf_special(in->buf)) {
        return ngx_http_next_body_filter(r, in);
    }

    if (ngx_http_range_test_overlapped(r, ctx, in) != NGX_OK) {
        return NGX_ERROR;
    }

    return ngx_http_range_multipart_body(r, ctx, in);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int ngx_int_t ;
struct TYPE_14__ {scalar_t__ state; TYPE_4__* upstream; } ;
typedef TYPE_5__ ngx_http_request_t ;
struct TYPE_11__ {scalar_t__ state; } ;
struct TYPE_10__ {int * end; int * start; scalar_t__ count; scalar_t__ code; } ;
struct TYPE_15__ {TYPE_2__ chunked; TYPE_1__ status; } ;
typedef TYPE_6__ ngx_http_proxy_ctx_t ;
struct TYPE_13__ {int input_filter; TYPE_3__* pipe; int process_header; } ;
struct TYPE_12__ {int input_filter; } ;


 int NGX_OK ;
 TYPE_6__* ngx_http_get_module_ctx (TYPE_5__*,int ) ;
 int ngx_http_proxy_copy_filter ;
 int ngx_http_proxy_module ;
 int ngx_http_proxy_non_buffered_copy_filter ;
 int ngx_http_proxy_process_status_line ;

__attribute__((used)) static ngx_int_t
ngx_http_proxy_reinit_request(ngx_http_request_t *r)
{
    ngx_http_proxy_ctx_t *ctx;

    ctx = ngx_http_get_module_ctx(r, ngx_http_proxy_module);

    if (ctx == ((void*)0)) {
        return NGX_OK;
    }

    ctx->status.code = 0;
    ctx->status.count = 0;
    ctx->status.start = ((void*)0);
    ctx->status.end = ((void*)0);
    ctx->chunked.state = 0;

    r->upstream->process_header = ngx_http_proxy_process_status_line;
    r->upstream->pipe->input_filter = ngx_http_proxy_copy_filter;
    r->upstream->input_filter = ngx_http_proxy_non_buffered_copy_filter;
    r->state = 0;

    return NGX_OK;
}

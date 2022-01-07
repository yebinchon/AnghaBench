
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int ngx_int_t ;
struct TYPE_11__ {scalar_t__ status_n; int content_length_n; int connection_close; scalar_t__ chunked; } ;
struct TYPE_12__ {int length; int keepalive; TYPE_3__ headers_in; TYPE_2__* pipe; int input_filter; } ;
typedef TYPE_4__ ngx_http_upstream_t ;
struct TYPE_13__ {TYPE_1__* connection; TYPE_4__* upstream; } ;
typedef TYPE_5__ ngx_http_request_t ;
struct TYPE_14__ {scalar_t__ head; } ;
typedef TYPE_6__ ngx_http_proxy_ctx_t ;
struct TYPE_10__ {int length; int input_filter; } ;
struct TYPE_9__ {int log; } ;


 int NGX_ERROR ;
 scalar_t__ NGX_HTTP_NOT_MODIFIED ;
 scalar_t__ NGX_HTTP_NO_CONTENT ;
 int NGX_LOG_DEBUG_HTTP ;
 int NGX_OK ;
 TYPE_6__* ngx_http_get_module_ctx (TYPE_5__*,int ) ;
 int ngx_http_proxy_chunked_filter ;
 int ngx_http_proxy_module ;
 int ngx_http_proxy_non_buffered_chunked_filter ;
 int ngx_log_debug4 (int ,int ,int ,char*,scalar_t__,scalar_t__,scalar_t__,int) ;

__attribute__((used)) static ngx_int_t
ngx_http_proxy_input_filter_init(void *data)
{
    ngx_http_request_t *r = data;
    ngx_http_upstream_t *u;
    ngx_http_proxy_ctx_t *ctx;

    u = r->upstream;
    ctx = ngx_http_get_module_ctx(r, ngx_http_proxy_module);

    if (ctx == ((void*)0)) {
        return NGX_ERROR;
    }

    ngx_log_debug4(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "http proxy filter init s:%ui h:%d c:%d l:%O",
                   u->headers_in.status_n, ctx->head, u->headers_in.chunked,
                   u->headers_in.content_length_n);



    if (u->headers_in.status_n == NGX_HTTP_NO_CONTENT
        || u->headers_in.status_n == NGX_HTTP_NOT_MODIFIED
        || ctx->head)
    {



        u->pipe->length = 0;
        u->length = 0;
        u->keepalive = !u->headers_in.connection_close;

    } else if (u->headers_in.chunked) {


        u->pipe->input_filter = ngx_http_proxy_chunked_filter;
        u->pipe->length = 3;

        u->input_filter = ngx_http_proxy_non_buffered_chunked_filter;
        u->length = 1;

    } else if (u->headers_in.content_length_n == 0) {


        u->pipe->length = 0;
        u->length = 0;
        u->keepalive = !u->headers_in.connection_close;

    } else {


        u->pipe->length = u->headers_in.content_length_n;
        u->length = u->headers_in.content_length_n;
    }

    return NGX_OK;
}

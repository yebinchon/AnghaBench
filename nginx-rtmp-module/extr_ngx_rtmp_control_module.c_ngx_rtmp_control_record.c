
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int ngx_str_t ;
struct TYPE_17__ {scalar_t__ len; int data; } ;
struct TYPE_18__ {TYPE_2__ path; int filter; } ;
typedef TYPE_3__ ngx_rtmp_control_ctx_t ;
typedef int ngx_int_t ;
struct TYPE_16__ {scalar_t__ content_length_n; int status; } ;
struct TYPE_19__ {int pool; TYPE_1__ headers_out; } ;
typedef TYPE_4__ ngx_http_request_t ;
struct TYPE_20__ {TYPE_6__* buf; } ;
typedef TYPE_5__ ngx_chain_t ;
struct TYPE_21__ {int last_buf; int pos; int last; } ;
typedef TYPE_6__ ngx_buf_t ;
typedef int cl ;


 char const* NGX_CONF_OK ;
 int NGX_HTTP_INTERNAL_SERVER_ERROR ;
 int NGX_HTTP_NO_CONTENT ;
 int NGX_HTTP_OK ;
 int NGX_RTMP_CONTROL_FILTER_PUBLISHER ;
 int ngx_cpymem (int ,int ,scalar_t__) ;
 TYPE_6__* ngx_create_temp_buf (int ,scalar_t__) ;
 TYPE_3__* ngx_http_get_module_ctx (TYPE_4__*,int ) ;
 int ngx_http_output_filter (TYPE_4__*,TYPE_5__*) ;
 int ngx_http_send_header (TYPE_4__*) ;
 int ngx_memzero (TYPE_5__*,int) ;
 int ngx_rtmp_control_module ;
 int ngx_rtmp_control_record_handler ;
 char* ngx_rtmp_control_walk (TYPE_4__*,int ) ;

__attribute__((used)) static ngx_int_t
ngx_rtmp_control_record(ngx_http_request_t *r, ngx_str_t *method)
{
    ngx_buf_t *b;
    const char *msg;
    ngx_chain_t cl;
    ngx_rtmp_control_ctx_t *ctx;

    ctx = ngx_http_get_module_ctx(r, ngx_rtmp_control_module);
    ctx->filter = NGX_RTMP_CONTROL_FILTER_PUBLISHER;

    msg = ngx_rtmp_control_walk(r, ngx_rtmp_control_record_handler);
    if (msg != NGX_CONF_OK) {
        goto error;
    }

    if (ctx->path.len == 0) {
        return NGX_HTTP_NO_CONTENT;
    }



    r->headers_out.status = NGX_HTTP_OK;
    r->headers_out.content_length_n = ctx->path.len;

    b = ngx_create_temp_buf(r->pool, ctx->path.len);
    if (b == ((void*)0)) {
        goto error;
    }

    ngx_memzero(&cl, sizeof(cl));
    cl.buf = b;

    b->last = ngx_cpymem(b->pos, ctx->path.data, ctx->path.len);
    b->last_buf = 1;

    ngx_http_send_header(r);

    return ngx_http_output_filter(r, &cl);

error:
    return NGX_HTTP_INTERNAL_SERVER_ERROR;
}

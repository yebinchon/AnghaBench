
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int u_char ;
typedef int ngx_int_t ;
struct TYPE_11__ {TYPE_1__* connection; int pool; } ;
typedef TYPE_2__ ngx_http_request_t ;
struct TYPE_12__ {int length; int * last; int * image; } ;
typedef TYPE_3__ ngx_http_image_filter_ctx_t ;
struct TYPE_13__ {TYPE_5__* buf; struct TYPE_13__* next; } ;
typedef TYPE_4__ ngx_chain_t ;
struct TYPE_14__ {size_t last; size_t pos; scalar_t__ last_buf; } ;
typedef TYPE_5__ ngx_buf_t ;
struct TYPE_10__ {int buffered; int log; } ;


 int NGX_AGAIN ;
 int NGX_ERROR ;
 int NGX_HTTP_IMAGE_BUFFERED ;
 int NGX_LOG_DEBUG_HTTP ;
 int NGX_LOG_ERR ;
 int NGX_OK ;
 int * ngx_cpymem (int *,size_t,size_t) ;
 TYPE_3__* ngx_http_get_module_ctx (TYPE_2__*,int ) ;
 int ngx_http_image_filter_module ;
 int ngx_log_debug1 (int ,int ,int ,char*,size_t) ;
 int ngx_log_error (int ,int ,int ,char*) ;
 int * ngx_palloc (int ,int) ;

__attribute__((used)) static ngx_int_t
ngx_http_image_read(ngx_http_request_t *r, ngx_chain_t *in)
{
    u_char *p;
    size_t size, rest;
    ngx_buf_t *b;
    ngx_chain_t *cl;
    ngx_http_image_filter_ctx_t *ctx;

    ctx = ngx_http_get_module_ctx(r, ngx_http_image_filter_module);

    if (ctx->image == ((void*)0)) {
        ctx->image = ngx_palloc(r->pool, ctx->length);
        if (ctx->image == ((void*)0)) {
            return NGX_ERROR;
        }

        ctx->last = ctx->image;
    }

    p = ctx->last;

    for (cl = in; cl; cl = cl->next) {

        b = cl->buf;
        size = b->last - b->pos;

        ngx_log_debug1(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                       "image buf: %uz", size);

        rest = ctx->image + ctx->length - p;

        if (size > rest) {
            ngx_log_error(NGX_LOG_ERR, r->connection->log, 0,
                          "image filter: too big response");
            return NGX_ERROR;
        }

        p = ngx_cpymem(p, b->pos, size);
        b->pos += size;

        if (b->last_buf) {
            ctx->last = p;
            return NGX_OK;
        }
    }

    ctx->last = p;
    r->connection->buffered |= NGX_HTTP_IMAGE_BUFFERED;

    return NGX_AGAIN;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int ngx_int_t ;
struct TYPE_13__ {TYPE_1__* connection; int pool; } ;
typedef TYPE_3__ ngx_http_request_t ;
struct TYPE_12__ {scalar_t__ avail_in; scalar_t__ next_in; } ;
struct TYPE_14__ {scalar_t__ flush; TYPE_2__ zstream; TYPE_6__* in_buf; TYPE_5__* copy_buf; TYPE_5__* in; TYPE_5__* copied; scalar_t__ redo; } ;
typedef TYPE_4__ ngx_http_gzip_ctx_t ;
struct TYPE_15__ {struct TYPE_15__* next; TYPE_6__* buf; } ;
typedef TYPE_5__ ngx_chain_t ;
typedef scalar_t__ ngx_buf_tag_t ;
struct TYPE_16__ {scalar_t__ tag; scalar_t__ pos; scalar_t__ last; scalar_t__ flush; scalar_t__ last_buf; } ;
struct TYPE_11__ {int log; } ;


 int NGX_AGAIN ;
 int NGX_DECLINED ;
 int NGX_LOG_DEBUG_HTTP ;
 int NGX_OK ;
 scalar_t__ Z_FINISH ;
 scalar_t__ Z_NO_FLUSH ;
 scalar_t__ Z_SYNC_FLUSH ;
 int ngx_free_chain (int ,TYPE_5__*) ;
 int ngx_http_gzip_filter_module ;
 int ngx_log_debug1 (int ,int ,int ,char*,TYPE_5__*) ;
 int ngx_log_debug3 (int ,int ,int ,char*,TYPE_6__*,scalar_t__,scalar_t__) ;

__attribute__((used)) static ngx_int_t
ngx_http_gzip_filter_add_data(ngx_http_request_t *r, ngx_http_gzip_ctx_t *ctx)
{
    ngx_chain_t *cl;

    if (ctx->zstream.avail_in || ctx->flush != Z_NO_FLUSH || ctx->redo) {
        return NGX_OK;
    }

    ngx_log_debug1(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "gzip in: %p", ctx->in);

    if (ctx->in == ((void*)0)) {
        return NGX_DECLINED;
    }

    if (ctx->copy_buf) {






        ctx->copy_buf->next = ctx->copied;
        ctx->copied = ctx->copy_buf;
        ctx->copy_buf = ((void*)0);
    }

    cl = ctx->in;
    ctx->in_buf = cl->buf;
    ctx->in = cl->next;

    if (ctx->in_buf->tag == (ngx_buf_tag_t) &ngx_http_gzip_filter_module) {
        ctx->copy_buf = cl;

    } else {
        ngx_free_chain(r->pool, cl);
    }

    ctx->zstream.next_in = ctx->in_buf->pos;
    ctx->zstream.avail_in = ctx->in_buf->last - ctx->in_buf->pos;

    ngx_log_debug3(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "gzip in_buf:%p ni:%p ai:%ud",
                   ctx->in_buf,
                   ctx->zstream.next_in, ctx->zstream.avail_in);

    if (ctx->in_buf->last_buf) {
        ctx->flush = Z_FINISH;

    } else if (ctx->in_buf->flush) {
        ctx->flush = Z_SYNC_FLUSH;

    } else if (ctx->zstream.avail_in == 0) {

        return NGX_AGAIN;
    }

    return NGX_OK;
}

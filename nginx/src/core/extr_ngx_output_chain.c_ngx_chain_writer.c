
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_8__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_11__ ;


typedef scalar_t__ off_t ;
typedef int ngx_int_t ;
struct TYPE_17__ {int buffered; int log; TYPE_3__* (* send_chain ) (TYPE_1__*,TYPE_3__*,int ) ;} ;
typedef TYPE_1__ ngx_connection_t ;
struct TYPE_18__ {TYPE_3__* out; TYPE_3__** last; TYPE_8__* pool; int limit; TYPE_1__* connection; } ;
typedef TYPE_2__ ngx_chain_writer_ctx_t ;
struct TYPE_19__ {struct TYPE_19__* next; TYPE_11__* buf; } ;
typedef TYPE_3__ ngx_chain_t ;
struct TYPE_20__ {int log; } ;
struct TYPE_16__ {int file_last; int file_pos; int file; int last; int pos; int start; int in_file; int recycled; int temporary; int flush; } ;


 int NGX_AGAIN ;
 TYPE_3__* NGX_CHAIN_ERROR ;
 int NGX_ERROR ;
 int NGX_LOG_ALERT ;
 int NGX_LOG_DEBUG_CORE ;
 int NGX_OK ;
 TYPE_3__* ngx_alloc_chain_link (TYPE_8__*) ;
 scalar_t__ ngx_buf_size (TYPE_11__*) ;
 int ngx_buf_special (TYPE_11__*) ;
 int ngx_debug_point () ;
 int ngx_free_chain (TYPE_8__*,TYPE_3__*) ;
 int ngx_log_debug1 (int ,int ,int ,char*,TYPE_3__*) ;
 int ngx_log_debug2 (int ,int ,int ,char*,int ,scalar_t__) ;
 int ngx_log_error (int ,int ,int ,char*,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 TYPE_3__* stub1 (TYPE_1__*,TYPE_3__*,int ) ;

ngx_int_t
ngx_chain_writer(void *data, ngx_chain_t *in)
{
    ngx_chain_writer_ctx_t *ctx = data;

    off_t size;
    ngx_chain_t *cl, *ln, *chain;
    ngx_connection_t *c;

    c = ctx->connection;

    for (size = 0; in; in = in->next) {

        if (ngx_buf_size(in->buf) == 0 && !ngx_buf_special(in->buf)) {

            ngx_log_error(NGX_LOG_ALERT, ctx->pool->log, 0,
                          "zero size buf in chain writer "
                          "t:%d r:%d f:%d %p %p-%p %p %O-%O",
                          in->buf->temporary,
                          in->buf->recycled,
                          in->buf->in_file,
                          in->buf->start,
                          in->buf->pos,
                          in->buf->last,
                          in->buf->file,
                          in->buf->file_pos,
                          in->buf->file_last);

            ngx_debug_point();

            continue;
        }

        if (ngx_buf_size(in->buf) < 0) {

            ngx_log_error(NGX_LOG_ALERT, ctx->pool->log, 0,
                          "negative size buf in chain writer "
                          "t:%d r:%d f:%d %p %p-%p %p %O-%O",
                          in->buf->temporary,
                          in->buf->recycled,
                          in->buf->in_file,
                          in->buf->start,
                          in->buf->pos,
                          in->buf->last,
                          in->buf->file,
                          in->buf->file_pos,
                          in->buf->file_last);

            ngx_debug_point();

            return NGX_ERROR;
        }

        size += ngx_buf_size(in->buf);

        ngx_log_debug2(NGX_LOG_DEBUG_CORE, c->log, 0,
                       "chain writer buf fl:%d s:%uO",
                       in->buf->flush, ngx_buf_size(in->buf));

        cl = ngx_alloc_chain_link(ctx->pool);
        if (cl == ((void*)0)) {
            return NGX_ERROR;
        }

        cl->buf = in->buf;
        cl->next = ((void*)0);
        *ctx->last = cl;
        ctx->last = &cl->next;
    }

    ngx_log_debug1(NGX_LOG_DEBUG_CORE, c->log, 0,
                   "chain writer in: %p", ctx->out);

    for (cl = ctx->out; cl; cl = cl->next) {

        if (ngx_buf_size(cl->buf) == 0 && !ngx_buf_special(cl->buf)) {

            ngx_log_error(NGX_LOG_ALERT, ctx->pool->log, 0,
                          "zero size buf in chain writer "
                          "t:%d r:%d f:%d %p %p-%p %p %O-%O",
                          cl->buf->temporary,
                          cl->buf->recycled,
                          cl->buf->in_file,
                          cl->buf->start,
                          cl->buf->pos,
                          cl->buf->last,
                          cl->buf->file,
                          cl->buf->file_pos,
                          cl->buf->file_last);

            ngx_debug_point();

            continue;
        }

        if (ngx_buf_size(cl->buf) < 0) {

            ngx_log_error(NGX_LOG_ALERT, ctx->pool->log, 0,
                          "negative size buf in chain writer "
                          "t:%d r:%d f:%d %p %p-%p %p %O-%O",
                          cl->buf->temporary,
                          cl->buf->recycled,
                          cl->buf->in_file,
                          cl->buf->start,
                          cl->buf->pos,
                          cl->buf->last,
                          cl->buf->file,
                          cl->buf->file_pos,
                          cl->buf->file_last);

            ngx_debug_point();

            return NGX_ERROR;
        }

        size += ngx_buf_size(cl->buf);
    }

    if (size == 0 && !c->buffered) {
        return NGX_OK;
    }

    chain = c->send_chain(c, ctx->out, ctx->limit);

    ngx_log_debug1(NGX_LOG_DEBUG_CORE, c->log, 0,
                   "chain writer out: %p", chain);

    if (chain == NGX_CHAIN_ERROR) {
        return NGX_ERROR;
    }

    for (cl = ctx->out; cl && cl != chain; ) {
        ln = cl;
        cl = cl->next;
        ngx_free_chain(ctx->pool, ln);
    }

    ctx->out = chain;

    if (ctx->out == ((void*)0)) {
        ctx->last = &ctx->out;

        if (!c->buffered) {
            return NGX_OK;
        }
    }

    return NGX_AGAIN;
}

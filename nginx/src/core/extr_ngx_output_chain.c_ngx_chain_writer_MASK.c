#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_8__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;
typedef  struct TYPE_16__   TYPE_11__ ;

/* Type definitions */
typedef  scalar_t__ off_t ;
typedef  int /*<<< orphan*/  ngx_int_t ;
struct TYPE_17__ {int /*<<< orphan*/  buffered; int /*<<< orphan*/  log; TYPE_3__* (* send_chain ) (TYPE_1__*,TYPE_3__*,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_1__ ngx_connection_t ;
struct TYPE_18__ {TYPE_3__* out; TYPE_3__** last; TYPE_8__* pool; int /*<<< orphan*/  limit; TYPE_1__* connection; } ;
typedef  TYPE_2__ ngx_chain_writer_ctx_t ;
struct TYPE_19__ {struct TYPE_19__* next; TYPE_11__* buf; } ;
typedef  TYPE_3__ ngx_chain_t ;
struct TYPE_20__ {int /*<<< orphan*/  log; } ;
struct TYPE_16__ {int /*<<< orphan*/  file_last; int /*<<< orphan*/  file_pos; int /*<<< orphan*/  file; int /*<<< orphan*/  last; int /*<<< orphan*/  pos; int /*<<< orphan*/  start; int /*<<< orphan*/  in_file; int /*<<< orphan*/  recycled; int /*<<< orphan*/  temporary; int /*<<< orphan*/  flush; } ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_AGAIN ; 
 TYPE_3__* NGX_CHAIN_ERROR ; 
 int /*<<< orphan*/  NGX_ERROR ; 
 int /*<<< orphan*/  NGX_LOG_ALERT ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_CORE ; 
 int /*<<< orphan*/  NGX_OK ; 
 TYPE_3__* FUNC0 (TYPE_8__*) ; 
 scalar_t__ FUNC1 (TYPE_11__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_11__*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_8__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC8 (TYPE_1__*,TYPE_3__*,int /*<<< orphan*/ ) ; 

ngx_int_t
FUNC9(void *data, ngx_chain_t *in)
{
    ngx_chain_writer_ctx_t *ctx = data;

    off_t              size;
    ngx_chain_t       *cl, *ln, *chain;
    ngx_connection_t  *c;

    c = ctx->connection;

    for (size = 0; in; in = in->next) {

        if (FUNC1(in->buf) == 0 && !FUNC2(in->buf)) {

            FUNC7(NGX_LOG_ALERT, ctx->pool->log, 0,
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

            FUNC3();

            continue;
        }

        if (FUNC1(in->buf) < 0) {

            FUNC7(NGX_LOG_ALERT, ctx->pool->log, 0,
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

            FUNC3();

            return NGX_ERROR;
        }

        size += FUNC1(in->buf);

        FUNC6(NGX_LOG_DEBUG_CORE, c->log, 0,
                       "chain writer buf fl:%d s:%uO",
                       in->buf->flush, FUNC1(in->buf));

        cl = FUNC0(ctx->pool);
        if (cl == NULL) {
            return NGX_ERROR;
        }

        cl->buf = in->buf;
        cl->next = NULL;
        *ctx->last = cl;
        ctx->last = &cl->next;
    }

    FUNC5(NGX_LOG_DEBUG_CORE, c->log, 0,
                   "chain writer in: %p", ctx->out);

    for (cl = ctx->out; cl; cl = cl->next) {

        if (FUNC1(cl->buf) == 0 && !FUNC2(cl->buf)) {

            FUNC7(NGX_LOG_ALERT, ctx->pool->log, 0,
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

            FUNC3();

            continue;
        }

        if (FUNC1(cl->buf) < 0) {

            FUNC7(NGX_LOG_ALERT, ctx->pool->log, 0,
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

            FUNC3();

            return NGX_ERROR;
        }

        size += FUNC1(cl->buf);
    }

    if (size == 0 && !c->buffered) {
        return NGX_OK;
    }

    chain = c->send_chain(c, ctx->out, ctx->limit);

    FUNC5(NGX_LOG_DEBUG_CORE, c->log, 0,
                   "chain writer out: %p", chain);

    if (chain == NGX_CHAIN_ERROR) {
        return NGX_ERROR;
    }

    for (cl = ctx->out; cl && cl != chain; /* void */) {
        ln = cl;
        cl = cl->next;
        FUNC4(ctx->pool, ln);
    }

    ctx->out = chain;

    if (ctx->out == NULL) {
        ctx->last = &ctx->out;

        if (!c->buffered) {
            return NGX_OK;
        }
    }

    return NGX_AGAIN;
}
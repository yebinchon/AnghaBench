#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_27__   TYPE_7__ ;
typedef  struct TYPE_26__   TYPE_6__ ;
typedef  struct TYPE_25__   TYPE_5__ ;
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ off_t ;
typedef  scalar_t__ ngx_int_t ;
struct TYPE_23__ {scalar_t__ size; } ;
typedef  TYPE_3__ ngx_http_slice_loc_conf_t ;
struct TYPE_27__ {scalar_t__ data; scalar_t__ len; } ;
struct TYPE_24__ {int last; scalar_t__ start; scalar_t__ end; TYPE_7__ range; scalar_t__ active; TYPE_5__* sr; } ;
typedef  TYPE_4__ ngx_http_slice_ctx_t ;
struct TYPE_25__ {TYPE_2__* connection; int /*<<< orphan*/  args; int /*<<< orphan*/  uri; scalar_t__ buffered; int /*<<< orphan*/  done; struct TYPE_25__* main; } ;
typedef  TYPE_5__ ngx_http_request_t ;
struct TYPE_26__ {TYPE_1__* buf; struct TYPE_26__* next; } ;
typedef  TYPE_6__ ngx_chain_t ;
struct TYPE_22__ {int /*<<< orphan*/  log; } ;
struct TYPE_21__ {int last_in_chain; int sync; scalar_t__ last_buf; } ;

/* Variables and functions */
 scalar_t__ NGX_ERROR ; 
 int /*<<< orphan*/  NGX_HTTP_LAST ; 
 int /*<<< orphan*/  NGX_HTTP_SUBREQUEST_CLONE ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 int /*<<< orphan*/  NGX_LOG_ERR ; 
 scalar_t__ NGX_OK ; 
 TYPE_4__* FUNC0 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC1 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_5__*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_http_slice_filter_module ; 
 scalar_t__ FUNC5 (TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_5__**,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC8 (scalar_t__,char*,scalar_t__,scalar_t__) ; 

__attribute__((used)) static ngx_int_t
FUNC9(ngx_http_request_t *r, ngx_chain_t *in)
{
    ngx_int_t                   rc;
    ngx_chain_t                *cl;
    ngx_http_slice_ctx_t       *ctx;
    ngx_http_slice_loc_conf_t  *slcf;

    ctx = FUNC0(r, ngx_http_slice_filter_module);

    if (ctx == NULL || r != r->main) {
        return FUNC2(r, in);
    }

    for (cl = in; cl; cl = cl->next) {
        if (cl->buf->last_buf) {
            cl->buf->last_buf = 0;
            cl->buf->last_in_chain = 1;
            cl->buf->sync = 1;
            ctx->last = 1;
        }
    }

    rc = FUNC2(r, in);

    if (rc == NGX_ERROR || !ctx->last) {
        return rc;
    }

    if (ctx->sr && !ctx->sr->done) {
        return rc;
    }

    if (!ctx->active) {
        FUNC7(NGX_LOG_ERR, r->connection->log, 0,
                      "missing slice response");
        return NGX_ERROR;
    }

    if (ctx->start >= ctx->end) {
        FUNC4(r, NULL, ngx_http_slice_filter_module);
        FUNC3(r, NGX_HTTP_LAST);
        return rc;
    }

    if (r->buffered) {
        return rc;
    }

    if (FUNC5(r, &r->uri, &r->args, &ctx->sr, NULL,
                            NGX_HTTP_SUBREQUEST_CLONE)
        != NGX_OK)
    {
        return NGX_ERROR;
    }

    FUNC4(ctx->sr, ctx, ngx_http_slice_filter_module);

    slcf = FUNC1(r, ngx_http_slice_filter_module);

    ctx->range.len = FUNC8(ctx->range.data, "bytes=%O-%O", ctx->start,
                                 ctx->start + (off_t) slcf->size - 1)
                     - ctx->range.data;

    ctx->active = 0;

    FUNC6(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "http slice subrequest: \"%V\"", &ctx->range);

    return rc;
}
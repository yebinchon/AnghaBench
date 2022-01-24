#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_6__ ;
typedef  struct TYPE_25__   TYPE_5__ ;
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;
typedef  struct TYPE_20__   TYPE_15__ ;

/* Type definitions */
typedef  scalar_t__ ngx_int_t ;
struct TYPE_22__ {TYPE_6__* doc; TYPE_5__* ctxt; scalar_t__ done; } ;
typedef  TYPE_2__ ngx_http_xslt_filter_ctx_t ;
struct TYPE_23__ {TYPE_1__* connection; } ;
typedef  TYPE_3__ ngx_http_request_t ;
struct TYPE_24__ {TYPE_15__* buf; struct TYPE_24__* next; } ;
typedef  TYPE_4__ ngx_chain_t ;
struct TYPE_26__ {int /*<<< orphan*/ * extSubset; } ;
struct TYPE_25__ {int wellFormed; TYPE_6__* myDoc; } ;
struct TYPE_21__ {int /*<<< orphan*/  log; } ;
struct TYPE_20__ {scalar_t__ last_in_chain; scalar_t__ last_buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 int /*<<< orphan*/  NGX_LOG_ERR ; 
 scalar_t__ NGX_OK ; 
 TYPE_2__* FUNC0 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_3__*,TYPE_4__*) ; 
 scalar_t__ FUNC2 (TYPE_3__*,TYPE_2__*,TYPE_15__*) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  ngx_http_xslt_filter_module ; 
 scalar_t__ FUNC4 (TYPE_3__*,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*) ; 

__attribute__((used)) static ngx_int_t
FUNC9(ngx_http_request_t *r, ngx_chain_t *in)
{
    int                          wellFormed;
    ngx_chain_t                 *cl;
    ngx_http_xslt_filter_ctx_t  *ctx;

    FUNC5(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "xslt filter body");

    if (in == NULL) {
        return FUNC1(r, in);
    }

    ctx = FUNC0(r, ngx_http_xslt_filter_module);

    if (ctx == NULL || ctx->done) {
        return FUNC1(r, in);
    }

    for (cl = in; cl; cl = cl->next) {

        if (FUNC2(r, ctx, cl->buf) != NGX_OK) {

            if (ctx->ctxt->myDoc) {

#if (NGX_HTTP_XSLT_REUSE_DTD)
                ctx->ctxt->myDoc->extSubset = NULL;
#endif
                FUNC7(ctx->ctxt->myDoc);
            }

            FUNC8(ctx->ctxt);

            return FUNC4(r, ctx, NULL);
        }

        if (cl->buf->last_buf || cl->buf->last_in_chain) {

            ctx->doc = ctx->ctxt->myDoc;

#if (NGX_HTTP_XSLT_REUSE_DTD)
            ctx->doc->extSubset = NULL;
#endif

            wellFormed = ctx->ctxt->wellFormed;

            FUNC8(ctx->ctxt);

            if (wellFormed) {
                return FUNC4(r, ctx,
                                       FUNC3(r, ctx));
            }

            FUNC7(ctx->doc);

            FUNC6(NGX_LOG_ERR, r->connection->log, 0,
                          "not well formed XML document");

            return FUNC4(r, ctx, NULL);
        }
    }

    return NGX_OK;
}
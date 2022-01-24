#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int ngx_uint_t ;
typedef  int ngx_int_t ;
struct TYPE_17__ {TYPE_1__* connection; int /*<<< orphan*/  pool; } ;
typedef  TYPE_2__ ngx_http_request_t ;
struct TYPE_18__ {int done; scalar_t__ nomem; int /*<<< orphan*/ * out; int /*<<< orphan*/ ** last_out; scalar_t__ busy; int /*<<< orphan*/  free; int /*<<< orphan*/  in; int /*<<< orphan*/  started; } ;
typedef  TYPE_3__ ngx_http_gunzip_ctx_t ;
typedef  int /*<<< orphan*/  ngx_chain_t ;
typedef  int /*<<< orphan*/  ngx_buf_tag_t ;
struct TYPE_16__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 int NGX_AGAIN ; 
 int NGX_DECLINED ; 
 int NGX_ERROR ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 int NGX_OK ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_2__*,TYPE_3__*) ; 
 int FUNC4 (TYPE_2__*,TYPE_3__*) ; 
 int FUNC5 (TYPE_2__*,TYPE_3__*) ; 
 int FUNC6 (TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  ngx_http_gunzip_filter_module ; 
 int FUNC7 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static ngx_int_t
FUNC10(ngx_http_request_t *r, ngx_chain_t *in)
{
    int                     rc;
    ngx_uint_t              flush;
    ngx_chain_t            *cl;
    ngx_http_gunzip_ctx_t  *ctx;

    ctx = FUNC2(r, ngx_http_gunzip_filter_module);

    if (ctx == NULL || ctx->done) {
        return FUNC7(r, in);
    }

    FUNC8(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "http gunzip filter");

    if (!ctx->started) {
        if (FUNC6(r, ctx) != NGX_OK) {
            goto failed;
        }
    }

    if (in) {
        if (FUNC0(r->pool, &ctx->in, in) != NGX_OK) {
            goto failed;
        }
    }

    if (ctx->nomem) {

        /* flush busy buffers */

        if (FUNC7(r, NULL) == NGX_ERROR) {
            goto failed;
        }

        cl = NULL;

        FUNC1(r->pool, &ctx->free, &ctx->busy, &cl,
                                (ngx_buf_tag_t) &ngx_http_gunzip_filter_module);
        ctx->nomem = 0;
        flush = 0;

    } else {
        flush = ctx->busy ? 1 : 0;
    }

    for ( ;; ) {

        /* cycle while we can write to a client */

        for ( ;; ) {

            /* cycle while there is data to feed zlib and ... */

            rc = FUNC3(r, ctx);

            if (rc == NGX_DECLINED) {
                break;
            }

            if (rc == NGX_AGAIN) {
                continue;
            }


            /* ... there are buffers to write zlib output */

            rc = FUNC4(r, ctx);

            if (rc == NGX_DECLINED) {
                break;
            }

            if (rc == NGX_ERROR) {
                goto failed;
            }

            rc = FUNC5(r, ctx);

            if (rc == NGX_OK) {
                break;
            }

            if (rc == NGX_ERROR) {
                goto failed;
            }

            /* rc == NGX_AGAIN */
        }

        if (ctx->out == NULL && !flush) {
            return ctx->busy ? NGX_AGAIN : NGX_OK;
        }

        rc = FUNC7(r, ctx->out);

        if (rc == NGX_ERROR) {
            goto failed;
        }

        FUNC1(r->pool, &ctx->free, &ctx->busy, &ctx->out,
                                (ngx_buf_tag_t) &ngx_http_gunzip_filter_module);
        ctx->last_out = &ctx->out;

        FUNC9(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                       "gunzip out: %p", ctx->out);

        ctx->nomem = 0;
        flush = 0;

        if (ctx->done) {
            return rc;
        }
    }

    /* unreachable */

failed:

    ctx->done = 1;

    return NGX_ERROR;
}
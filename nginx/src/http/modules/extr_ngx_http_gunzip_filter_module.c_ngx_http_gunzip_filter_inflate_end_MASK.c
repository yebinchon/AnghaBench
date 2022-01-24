#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ngx_int_t ;
struct TYPE_14__ {struct TYPE_14__* main; int /*<<< orphan*/  pool; TYPE_1__* connection; } ;
typedef  TYPE_3__ ngx_http_request_t ;
struct TYPE_15__ {int done; TYPE_5__** last_out; TYPE_2__* request; TYPE_6__* out_buf; int /*<<< orphan*/  zstream; } ;
typedef  TYPE_4__ ngx_http_gunzip_ctx_t ;
struct TYPE_16__ {struct TYPE_16__* next; TYPE_6__* buf; } ;
typedef  TYPE_5__ ngx_chain_t ;
struct TYPE_17__ {int last_buf; int last_in_chain; int sync; } ;
typedef  TYPE_6__ ngx_buf_t ;
struct TYPE_13__ {int /*<<< orphan*/  pool; } ;
struct TYPE_12__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_ERROR ; 
 int /*<<< orphan*/  NGX_LOG_ALERT ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 int /*<<< orphan*/  NGX_OK ; 
 int Z_OK ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_5__* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_6__*) ; 
 TYPE_6__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static ngx_int_t
FUNC6(ngx_http_request_t *r,
    ngx_http_gunzip_ctx_t *ctx)
{
    int           rc;
    ngx_buf_t    *b;
    ngx_chain_t  *cl;

    FUNC4(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "gunzip inflate end");

    rc = FUNC0(&ctx->zstream);

    if (rc != Z_OK) {
        FUNC5(NGX_LOG_ALERT, r->connection->log, 0,
                      "inflateEnd() failed: %d", rc);
        return NGX_ERROR;
    }

    b = ctx->out_buf;

    if (FUNC2(b) == 0) {

        b = FUNC3(ctx->request->pool);
        if (b == NULL) {
            return NGX_ERROR;
        }
    }

    cl = FUNC1(r->pool);
    if (cl == NULL) {
        return NGX_ERROR;
    }

    cl->buf = b;
    cl->next = NULL;
    *ctx->last_out = cl;
    ctx->last_out = &cl->next;

    b->last_buf = (r == r->main) ? 1 : 0;
    b->last_in_chain = 1;
    b->sync = 1;

    ctx->done = 1;

    return NGX_OK;
}
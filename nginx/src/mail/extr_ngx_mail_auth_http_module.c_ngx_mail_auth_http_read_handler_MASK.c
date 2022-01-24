#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_9__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  ngx_mail_session_t ;
struct TYPE_11__ {int /*<<< orphan*/  name; } ;
struct TYPE_12__ {int /*<<< orphan*/  pool; int /*<<< orphan*/  (* handler ) (int /*<<< orphan*/ *,TYPE_2__*) ;TYPE_9__* response; TYPE_1__ peer; } ;
typedef  TYPE_2__ ngx_mail_auth_http_ctx_t ;
struct TYPE_13__ {int /*<<< orphan*/  log; scalar_t__ timedout; TYPE_4__* data; } ;
typedef  TYPE_3__ ngx_event_t ;
struct TYPE_14__ {int /*<<< orphan*/ * data; } ;
typedef  TYPE_4__ ngx_connection_t ;
struct TYPE_15__ {scalar_t__ end; scalar_t__ last; int /*<<< orphan*/  pos; } ;

/* Variables and functions */
 scalar_t__ NGX_AGAIN ; 
 int /*<<< orphan*/  NGX_ETIMEDOUT ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_MAIL ; 
 int /*<<< orphan*/  NGX_LOG_ERR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 TYPE_9__* FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_mail_auth_http_module ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (TYPE_4__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_2__*) ; 

__attribute__((used)) static void
FUNC9(ngx_event_t *rev)
{
    ssize_t                     n, size;
    ngx_connection_t          *c;
    ngx_mail_session_t        *s;
    ngx_mail_auth_http_ctx_t  *ctx;

    c = rev->data;
    s = c->data;

    FUNC3(NGX_LOG_DEBUG_MAIL, rev->log, 0,
                   "mail auth http read handler");

    ctx = FUNC5(s, ngx_mail_auth_http_module);

    if (rev->timedout) {
        FUNC4(NGX_LOG_ERR, rev->log, NGX_ETIMEDOUT,
                      "auth http server %V timed out", ctx->peer.name);
        FUNC0(c);
        FUNC2(ctx->pool);
        FUNC6(s);
        return;
    }

    if (ctx->response == NULL) {
        ctx->response = FUNC1(ctx->pool, 1024);
        if (ctx->response == NULL) {
            FUNC0(c);
            FUNC2(ctx->pool);
            FUNC6(s);
            return;
        }
    }

    size = ctx->response->end - ctx->response->last;

    n = FUNC7(c, ctx->response->pos, size);

    if (n > 0) {
        ctx->response->last += n;

        ctx->handler(s, ctx);
        return;
    }

    if (n == NGX_AGAIN) {
        return;
    }

    FUNC0(c);
    FUNC2(ctx->pool);
    FUNC6(s);
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ngx_stream_session_t ;
struct TYPE_9__ {int /*<<< orphan*/ * out; } ;
typedef  TYPE_1__ ngx_stream_return_ctx_t ;
struct TYPE_10__ {scalar_t__ timedout; TYPE_3__* data; } ;
typedef  TYPE_2__ ngx_event_t ;
struct TYPE_11__ {int /*<<< orphan*/  log; int /*<<< orphan*/  buffered; int /*<<< orphan*/ * data; } ;
typedef  TYPE_3__ ngx_connection_t ;

/* Variables and functions */
 scalar_t__ NGX_ERROR ; 
 int /*<<< orphan*/  NGX_ETIMEDOUT ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_STREAM ; 
 scalar_t__ NGX_OK ; 
 int /*<<< orphan*/  NGX_STREAM_INTERNAL_SERVER_ERROR ; 
 int /*<<< orphan*/  NGX_STREAM_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_stream_return_module ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC7(ngx_event_t *ev)
{
    ngx_connection_t         *c;
    ngx_stream_session_t     *s;
    ngx_stream_return_ctx_t  *ctx;

    c = ev->data;
    s = c->data;

    if (ev->timedout) {
        FUNC1(c, NGX_ETIMEDOUT, "connection timed out");
        FUNC4(s, NGX_STREAM_OK);
        return;
    }

    ctx = FUNC5(s, ngx_stream_return_module);

    if (FUNC6(s, ctx->out, 1) == NGX_ERROR) {
        FUNC4(s, NGX_STREAM_INTERNAL_SERVER_ERROR);
        return;
    }

    ctx->out = NULL;

    if (!c->buffered) {
        FUNC3(NGX_LOG_DEBUG_STREAM, c->log, 0,
                       "stream return done sending");
        FUNC4(s, NGX_STREAM_OK);
        return;
    }

    if (FUNC2(ev, 0) != NGX_OK) {
        FUNC4(s, NGX_STREAM_INTERNAL_SERVER_ERROR);
        return;
    }

    FUNC0(ev, 5000);
}
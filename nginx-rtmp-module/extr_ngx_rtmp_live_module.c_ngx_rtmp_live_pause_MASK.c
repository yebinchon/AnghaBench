#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {TYPE_1__* connection; } ;
typedef  TYPE_2__ ngx_rtmp_session_t ;
struct TYPE_16__ {scalar_t__ pause; int /*<<< orphan*/  position; } ;
typedef  TYPE_3__ ngx_rtmp_pause_t ;
struct TYPE_17__ {int paused; int /*<<< orphan*/ * stream; } ;
typedef  TYPE_4__ ngx_rtmp_live_ctx_t ;
typedef  int /*<<< orphan*/  ngx_int_t ;
struct TYPE_14__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_ERROR ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_RTMP ; 
 scalar_t__ NGX_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_rtmp_live_module ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 scalar_t__ FUNC5 (TYPE_2__*,char*,char*,char*) ; 

__attribute__((used)) static ngx_int_t
FUNC6(ngx_rtmp_session_t *s, ngx_rtmp_pause_t *v)
{
    ngx_rtmp_live_ctx_t            *ctx;

    ctx = FUNC2(s, ngx_rtmp_live_module);

    if (ctx == NULL || ctx->stream == NULL) {
        goto next;
    }

    FUNC1(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
                   "live: pause=%i timestamp=%f",
                   (ngx_int_t) v->pause, v->position);

    if (v->pause) {
        if (FUNC5(s, "NetStream.Pause.Notify", "status",
                                 "Paused live")
            != NGX_OK)
        {
            return NGX_ERROR;
        }

        ctx->paused = 1;

        FUNC4(s);

    } else {
        if (FUNC5(s, "NetStream.Unpause.Notify", "status",
                                 "Unpaused live")
            != NGX_OK)
        {
            return NGX_ERROR;
        }

        ctx->paused = 0;

        FUNC3(s);
    }

next:
    return FUNC0(s, v);
}
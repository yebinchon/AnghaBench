#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {TYPE_1__* connection; } ;
typedef  TYPE_3__ ngx_rtmp_session_t ;
struct TYPE_16__ {scalar_t__ fd; } ;
struct TYPE_18__ {int /*<<< orphan*/  opened; TYPE_2__ file; } ;
typedef  TYPE_4__ ngx_rtmp_play_ctx_t ;
struct TYPE_19__ {scalar_t__ pause; int /*<<< orphan*/  position; } ;
typedef  TYPE_5__ ngx_rtmp_pause_t ;
typedef  int /*<<< orphan*/  ngx_int_t ;
struct TYPE_15__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_ERROR ; 
 scalar_t__ NGX_INVALID_FILE ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_RTMP ; 
 scalar_t__ NGX_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC3 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  ngx_rtmp_play_module ; 
 scalar_t__ FUNC6 (TYPE_3__*,char*,char*,char*) ; 

__attribute__((used)) static ngx_int_t
FUNC7(ngx_rtmp_session_t *s, ngx_rtmp_pause_t *v)
{
    ngx_rtmp_play_ctx_t            *ctx;

    ctx = FUNC3(s, ngx_rtmp_play_module);

    if (ctx == NULL || ctx->file.fd == NGX_INVALID_FILE) {
        goto next;
    }

    if (!ctx->opened) {
        FUNC1(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
                       "play: pause ignored");
        goto next;
    }

    FUNC2(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
                   "play: pause=%i timestamp=%f",
                   (ngx_int_t) v->pause, v->position);

    if (v->pause) {
        if (FUNC6(s, "NetStream.Pause.Notify", "status",
                                 "Paused video on demand")
            != NGX_OK)
        {
            return NGX_ERROR;
        }

        FUNC5(s);

    } else {
        if (FUNC6(s, "NetStream.Unpause.Notify", "status",
                                 "Unpaused video on demand")
            != NGX_OK)
        {
            return NGX_ERROR;
        }

        FUNC4(s); /*TODO: v->position? */
    }

next:
    return FUNC0(s, v);
}
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
typedef  scalar_t__ ngx_uint_t ;
struct TYPE_17__ {TYPE_2__* connection; int /*<<< orphan*/  posted_dry_events; } ;
typedef  TYPE_3__ ngx_rtmp_session_t ;
struct TYPE_18__ {int /*<<< orphan*/  file; TYPE_1__* fmt; } ;
typedef  TYPE_4__ ngx_rtmp_play_ctx_t ;
typedef  scalar_t__ ngx_int_t ;
struct TYPE_19__ {TYPE_3__* data; } ;
typedef  TYPE_5__ ngx_event_t ;
struct TYPE_16__ {int /*<<< orphan*/  log; } ;
struct TYPE_15__ {scalar_t__ (* send ) (TYPE_3__*,int /*<<< orphan*/ *,scalar_t__*) ;} ;

/* Variables and functions */
 scalar_t__ NGX_AGAIN ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_RTMP ; 
 scalar_t__ NGX_OK ; 
 int /*<<< orphan*/  NGX_RTMP_MSID ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ngx_posted_events ; 
 TYPE_4__* FUNC4 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_rtmp_play_module ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,char*,char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (TYPE_3__*,int /*<<< orphan*/ *,scalar_t__*) ; 

__attribute__((used)) static void
FUNC9(ngx_event_t *e)
{
    ngx_rtmp_session_t     *s = e->data;
    ngx_rtmp_play_ctx_t    *ctx;
    ngx_int_t               rc;
    ngx_uint_t              ts;

    ctx = FUNC4(s, ngx_rtmp_play_module);

    if (ctx == NULL || ctx->fmt == NULL || ctx->fmt->send == NULL) {
        return;
    }

    ts = 0;

    rc = ctx->fmt->send(s, &ctx->file, &ts);

    if (rc > 0) {
        FUNC2(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
                       "play: send schedule %i", rc);

        FUNC0(e, rc);
        return;
    }

    if (rc == NGX_AGAIN) {
        FUNC1(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
                       "play: send buffer full");

        FUNC3(e, &s->posted_dry_events);
        return;
    }

    if (rc == NGX_OK) {
        FUNC1(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
                       "play: send restart");

        FUNC3(e, &ngx_posted_events);
        return;
    }


    FUNC1(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
                   "play: send done");

    FUNC7(s, NGX_RTMP_MSID);

    FUNC5(s, "NetStream.Play.Complete", "status", ts, 0);

    FUNC6(s, "NetStream.Play.Stop", "status", "Stopped");
}
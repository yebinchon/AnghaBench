#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
struct TYPE_20__ {TYPE_1__* connection; } ;
typedef  TYPE_3__ ngx_rtmp_session_t ;
struct TYPE_21__ {struct TYPE_21__* next; } ;
typedef  TYPE_4__ ngx_rtmp_live_stream_t ;
struct TYPE_22__ {scalar_t__ publishing; int /*<<< orphan*/  silent; TYPE_2__* stream; TYPE_3__* session; struct TYPE_22__* next; } ;
typedef  TYPE_5__ ngx_rtmp_live_ctx_t ;
struct TYPE_23__ {int /*<<< orphan*/  play_restart; TYPE_2__* free_streams; int /*<<< orphan*/  idle_streams; } ;
typedef  TYPE_6__ ngx_rtmp_live_app_conf_t ;
typedef  int /*<<< orphan*/  ngx_rtmp_close_stream_t ;
typedef  int /*<<< orphan*/  ngx_int_t ;
struct TYPE_19__ {struct TYPE_19__* next; int /*<<< orphan*/  name; TYPE_5__* ctx; scalar_t__ active; scalar_t__ publishing; } ;
struct TYPE_18__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_LOG_DEBUG_RTMP ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 TYPE_6__* FUNC4 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC5 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 TYPE_4__** FUNC6 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_rtmp_live_module ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,char*,char*,char*) ; 

__attribute__((used)) static ngx_int_t
FUNC9(ngx_rtmp_session_t *s, ngx_rtmp_close_stream_t *v)
{
    ngx_rtmp_session_t             *ss;
    ngx_rtmp_live_ctx_t            *ctx, **cctx, *pctx;
    ngx_rtmp_live_stream_t        **stream;
    ngx_rtmp_live_app_conf_t       *lacf;

    lacf = FUNC4(s, ngx_rtmp_live_module);
    if (lacf == NULL) {
        goto next;
    }

    ctx = FUNC5(s, ngx_rtmp_live_module);
    if (ctx == NULL) {
        goto next;
    }

    if (ctx->stream == NULL) {
        FUNC1(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
                       "live: not joined");
        goto next;
    }

    FUNC2(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
                   "live: leave '%s'", ctx->stream->name);

    if (ctx->stream->publishing && ctx->publishing) {
        ctx->stream->publishing = 0;
    }

    for (cctx = &ctx->stream->ctx; *cctx; cctx = &(*cctx)->next) {
        if (*cctx == ctx) {
            *cctx = ctx->next;
            break;
        }
    }

    if (ctx->publishing || ctx->stream->active) {
        FUNC7(s);
    }

    if (ctx->publishing) {
        FUNC8(s, "NetStream.Unpublish.Success",
                             "status", "Stop publishing");
        if (!lacf->idle_streams) {
            for (pctx = ctx->stream->ctx; pctx; pctx = pctx->next) {
                if (pctx->publishing == 0) {
                    ss = pctx->session;
                    FUNC1(NGX_LOG_DEBUG_RTMP, ss->connection->log, 0,
                                   "live: no publisher");
                    FUNC3(ss);
                }
            }
        }
    }

    if (ctx->stream->ctx) {
        ctx->stream = NULL;
        goto next;
    }

    FUNC2(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
                   "live: delete empty stream '%s'",
                   ctx->stream->name);

    stream = FUNC6(s, ctx->stream->name, 0);
    if (stream == NULL) {
        goto next;
    }
    *stream = (*stream)->next;

    ctx->stream->next = lacf->free_streams;
    lacf->free_streams = ctx->stream;
    ctx->stream = NULL;

    if (!ctx->silent && !ctx->publishing && !lacf->play_restart) {
        FUNC8(s, "NetStream.Play.Stop", "status", "Stop live");
    }

next:
    return FUNC0(s, v);
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_8__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_10__ {TYPE_1__* connection; } ;
typedef  TYPE_2__ ngx_rtmp_session_t ;
struct TYPE_11__ {int ntracks; scalar_t__ aindex; scalar_t__ vindex; TYPE_8__* track; scalar_t__ vtracks; scalar_t__ atracks; TYPE_8__* tracks; } ;
typedef  TYPE_3__ ngx_rtmp_mp4_ctx_t ;
typedef  scalar_t__ ngx_int_t ;
struct TYPE_12__ {size_t id; scalar_t__ type; } ;
struct TYPE_9__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 scalar_t__ NGX_ERROR ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_RTMP ; 
 scalar_t__ NGX_OK ; 
 scalar_t__ NGX_RTMP_MSG_AUDIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_8__*,int) ; 
 TYPE_3__* FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_rtmp_mp4_module ; 
 scalar_t__ FUNC4 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static ngx_int_t
FUNC5(ngx_rtmp_session_t *s, u_char *pos, u_char *last)
{
    ngx_rtmp_mp4_ctx_t         *ctx;

    ctx = FUNC3(s, ngx_rtmp_mp4_module);

    if (ctx->track) {
        return NGX_OK;
    }

    ctx->track = (ctx->ntracks == sizeof(ctx->tracks) / sizeof(ctx->tracks[0]))
                 ? NULL : &ctx->tracks[ctx->ntracks];

    if (ctx->track) {
        FUNC2(ctx->track, sizeof(*ctx->track));
        ctx->track->id = ctx->ntracks;

        FUNC0(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
                       "mp4: trying track %ui", ctx->ntracks);
    }

    if (FUNC4(s, pos, last) != NGX_OK) {
        return NGX_ERROR;
    }

    if (ctx->track && ctx->track->type &&
        (ctx->ntracks == 0 ||
         ctx->tracks[0].type != ctx->tracks[ctx->ntracks].type))
    {
        FUNC0(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
                       "mp4: adding track %ui", ctx->ntracks);

        if (ctx->track->type == NGX_RTMP_MSG_AUDIO) {
            if (ctx->atracks++ != ctx->aindex) {
                FUNC1(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
                               "mp4: skipping audio track %ui!=%ui",
                               ctx->atracks - 1, ctx->aindex);
                ctx->track = NULL;
                return NGX_OK;
            }

        } else {
            if (ctx->vtracks++ != ctx->vindex) {
                FUNC1(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
                               "mp4: skipping video track %i!=%i",
                               ctx->vtracks - 1, ctx->vindex);
                ctx->track = NULL;
                return NGX_OK;
            }
        }

        ++ctx->ntracks;

    } else {
        FUNC0(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
                       "mp4: ignoring track %ui", ctx->ntracks);
    }

    ctx->track = NULL;

    return NGX_OK;
}
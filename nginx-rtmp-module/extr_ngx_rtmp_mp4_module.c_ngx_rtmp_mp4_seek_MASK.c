#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  size_t ngx_uint_t ;
struct TYPE_15__ {TYPE_2__* connection; } ;
typedef  TYPE_3__ ngx_rtmp_session_t ;
struct TYPE_13__ {int /*<<< orphan*/  timestamp; } ;
struct TYPE_16__ {scalar_t__ type; TYPE_1__ cursor; } ;
typedef  TYPE_4__ ngx_rtmp_mp4_track_t ;
struct TYPE_17__ {size_t ntracks; size_t start_timestamp; int /*<<< orphan*/  epoch; TYPE_4__* tracks; } ;
typedef  TYPE_5__ ngx_rtmp_mp4_ctx_t ;
typedef  int /*<<< orphan*/  ngx_int_t ;
typedef  int /*<<< orphan*/  ngx_file_t ;
struct TYPE_14__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_LOG_DEBUG_RTMP ; 
 int /*<<< orphan*/  NGX_OK ; 
 scalar_t__ NGX_RTMP_MSG_VIDEO ; 
 int /*<<< orphan*/  ngx_current_msec ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,size_t) ; 
 TYPE_5__* FUNC1 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_rtmp_mp4_module ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,TYPE_4__*,size_t) ; 
 size_t FUNC4 (TYPE_4__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ngx_int_t
FUNC5(ngx_rtmp_session_t *s, ngx_file_t *f, ngx_uint_t timestamp)
{
    ngx_rtmp_mp4_ctx_t     *ctx;
    ngx_rtmp_mp4_track_t   *t;
    ngx_uint_t              n;

    ctx = FUNC1(s, ngx_rtmp_mp4_module);

    if (ctx == NULL) {
        return NGX_OK;
    }

    FUNC0(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
                   "mp4: seek timestamp=%ui", timestamp);

    for (n = 0; n < ctx->ntracks; ++n) {
        t = &ctx->tracks[n];

        if (t->type != NGX_RTMP_MSG_VIDEO) {
            continue;
        }

        FUNC0(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
                       "mp4: track#%ui seek video", n);

        FUNC3(s, t, timestamp);

        timestamp = FUNC4(t, t->cursor.timestamp);

        break;
    }

    for (n = 0; n < ctx->ntracks; ++n) {
        t = &ctx->tracks[n];

        if (t->type == NGX_RTMP_MSG_VIDEO) {
            continue;
        }

        FUNC0(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
                       "mp4: track#%ui seek", n);

        FUNC3(s, &ctx->tracks[n], timestamp);
    }

    ctx->start_timestamp = timestamp;
    ctx->epoch = ngx_current_msec;

    return FUNC2(s);
}
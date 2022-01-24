#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {TYPE_2__* connection; } ;
typedef  TYPE_3__ ngx_rtmp_session_t ;
struct TYPE_15__ {scalar_t__ fd; } ;
struct TYPE_18__ {scalar_t__ file_id; TYPE_1__ file; } ;
typedef  TYPE_4__ ngx_rtmp_play_ctx_t ;
typedef  int /*<<< orphan*/  ngx_rtmp_close_stream_t ;
typedef  int /*<<< orphan*/  ngx_int_t ;
struct TYPE_16__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 scalar_t__ NGX_INVALID_FILE ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_RTMP ; 
 int /*<<< orphan*/  NGX_RTMP_MSID ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 TYPE_4__* FUNC3 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  ngx_rtmp_play_module ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ngx_int_t
FUNC10(ngx_rtmp_session_t *s, ngx_rtmp_close_stream_t *v)
{
    ngx_rtmp_play_ctx_t        *ctx;

    ctx = FUNC3(s, ngx_rtmp_play_module);
    if (ctx == NULL) {
        goto next;
    }

    FUNC2(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
                   "play: close_stream");

    FUNC6(s);

    FUNC5(s);

    if (ctx->file.fd != NGX_INVALID_FILE) {
        FUNC1(ctx->file.fd);
        ctx->file.fd = NGX_INVALID_FILE;

        FUNC9(s, NGX_RTMP_MSID);

        FUNC8(s, "NetStream.Play.Stop", "status",
                             "Stop video on demand");
    }

    if (ctx->file_id) {
        FUNC4(s);
    }

    FUNC7(s);

next:
    return FUNC0(s, v);
}
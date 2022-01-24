#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ngx_uint_t ;
struct TYPE_18__ {TYPE_1__* connection; } ;
typedef  TYPE_3__ ngx_rtmp_session_t ;
struct TYPE_19__ {scalar_t__ offset; } ;
typedef  TYPE_4__ ngx_rtmp_seek_t ;
struct TYPE_17__ {scalar_t__ fd; } ;
struct TYPE_20__ {scalar_t__ post_seek; int /*<<< orphan*/  opened; TYPE_2__ file; } ;
typedef  TYPE_5__ ngx_rtmp_play_ctx_t ;
typedef  int /*<<< orphan*/  ngx_int_t ;
struct TYPE_16__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_ERROR ; 
 scalar_t__ NGX_INVALID_FILE ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_RTMP ; 
 scalar_t__ NGX_OK ; 
 int /*<<< orphan*/  NGX_RTMP_MSID ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,scalar_t__) ; 
 TYPE_5__* FUNC2 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  ngx_rtmp_play_module ; 
 scalar_t__ FUNC4 (TYPE_3__*,char*,char*,char*) ; 
 scalar_t__ FUNC5 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_3__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ngx_int_t
FUNC7(ngx_rtmp_session_t *s, ngx_rtmp_seek_t *v)
{
    ngx_rtmp_play_ctx_t            *ctx;

    ctx = FUNC2(s, ngx_rtmp_play_module);
    if (ctx == NULL || ctx->file.fd == NGX_INVALID_FILE) {
        goto next;
    }

    if (!ctx->opened) {
        ctx->post_seek = (ngx_uint_t) v->offset;
        FUNC1(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
                       "play: post seek=%ui", ctx->post_seek);
        goto next;
    }

    if (FUNC6(s, NGX_RTMP_MSID) != NGX_OK) {
        return NGX_ERROR;
    }

    FUNC3(s, (ngx_uint_t) v->offset);

    if (FUNC4(s, "NetStream.Seek.Notify", "status", "Seeking")
        != NGX_OK)
    {
        return NGX_ERROR;
    }

    if (FUNC5(s, NGX_RTMP_MSID) != NGX_OK) {
        return NGX_ERROR;
    }

next:
    return FUNC0(s, v);
}
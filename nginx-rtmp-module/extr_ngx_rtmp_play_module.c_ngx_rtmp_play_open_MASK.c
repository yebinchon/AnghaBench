#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ngx_uint_t ;
struct TYPE_19__ {TYPE_2__* connection; } ;
typedef  TYPE_3__ ngx_rtmp_session_t ;
struct TYPE_21__ {int /*<<< orphan*/  log; int /*<<< orphan*/  handler; TYPE_3__* data; } ;
struct TYPE_17__ {scalar_t__ fd; } ;
struct TYPE_20__ {scalar_t__ post_seek; int opened; TYPE_5__ send_evt; TYPE_1__ file; } ;
typedef  TYPE_4__ ngx_rtmp_play_ctx_t ;
typedef  scalar_t__ ngx_int_t ;
typedef  TYPE_5__ ngx_event_t ;
struct TYPE_18__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 scalar_t__ NGX_CONF_UNSET_UINT ; 
 scalar_t__ NGX_ERROR ; 
 scalar_t__ NGX_INVALID_FILE ; 
 scalar_t__ NGX_OK ; 
 int /*<<< orphan*/  NGX_RTMP_MSID ; 
 TYPE_4__* FUNC0 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_3__*) ; 
 scalar_t__ FUNC2 (TYPE_3__*,scalar_t__) ; 
 scalar_t__ FUNC3 (TYPE_3__*) ; 
 scalar_t__ FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  ngx_rtmp_play_module ; 
 int /*<<< orphan*/  ngx_rtmp_play_send ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int) ; 
 scalar_t__ FUNC6 (TYPE_3__*) ; 
 scalar_t__ FUNC7 (TYPE_3__*,char*,char*,char*) ; 
 scalar_t__ FUNC8 (TYPE_3__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ngx_int_t
FUNC9(ngx_rtmp_session_t *s, double start)
{
    ngx_rtmp_play_ctx_t    *ctx;
    ngx_event_t            *e;
    ngx_uint_t              timestamp;

    ctx = FUNC0(s, ngx_rtmp_play_module);

    if (ctx->file.fd == NGX_INVALID_FILE) {
        return NGX_ERROR;
    }

    if (FUNC8(s, NGX_RTMP_MSID) != NGX_OK) {
        return NGX_ERROR;
    }

    if (FUNC7(s, "NetStream.Play.Start", "status",
                             "Start video on demand")
        != NGX_OK)
    {
        return NGX_ERROR;
    }

    if (FUNC4(s) != NGX_OK) {
        return NGX_ERROR;
    }

    e = &ctx->send_evt;
    e->data = s;
    e->handler = ngx_rtmp_play_send;
    e->log = s->connection->log;

    FUNC5(s, 1);

    if (FUNC6(s) != NGX_OK) {
        return NGX_ERROR;
    }

    if (FUNC1(s) != NGX_OK) {
        return NGX_ERROR;
    }

    timestamp = ctx->post_seek != NGX_CONF_UNSET_UINT ? ctx->post_seek :
                (start < 0 ? 0 : (ngx_uint_t) start);

    if (FUNC2(s, timestamp) != NGX_OK) {
        return NGX_ERROR;
    }

    if (FUNC3(s) != NGX_OK) {
        return NGX_ERROR;
    }

    ctx->opened = 1;

    return NGX_OK;
}
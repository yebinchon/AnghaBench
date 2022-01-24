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
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ auto_pushed; } ;
typedef  TYPE_1__ ngx_rtmp_session_t ;
struct TYPE_12__ {scalar_t__ timer_set; } ;
struct TYPE_11__ {int flags; TYPE_8__ update_evt; } ;
typedef  TYPE_2__ ngx_rtmp_notify_ctx_t ;
typedef  int /*<<< orphan*/  ngx_rtmp_notify_app_conf_t ;
typedef  int /*<<< orphan*/  ngx_rtmp_close_stream_t ;
typedef  int /*<<< orphan*/  ngx_int_t ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_RTMP_NOTIFY_DONE ; 
 int NGX_RTMP_NOTIFY_PLAYING ; 
 int /*<<< orphan*/  NGX_RTMP_NOTIFY_PLAY_DONE ; 
 int NGX_RTMP_NOTIFY_PUBLISHING ; 
 int /*<<< orphan*/  NGX_RTMP_NOTIFY_PUBLISH_DONE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_8__*) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_rtmp_notify_module ; 

__attribute__((used)) static ngx_int_t
FUNC5(ngx_rtmp_session_t *s,
                             ngx_rtmp_close_stream_t *v)
{
    ngx_rtmp_notify_ctx_t          *ctx;
    ngx_rtmp_notify_app_conf_t     *nacf;

    if (s->auto_pushed) {
        goto next;
    }

    ctx = FUNC3(s, ngx_rtmp_notify_module);

    if (ctx == NULL) {
        goto next;
    }

    nacf = FUNC2(s, ngx_rtmp_notify_module);

    if (nacf == NULL) {
        goto next;
    }

    if (ctx->flags & NGX_RTMP_NOTIFY_PUBLISHING) {
        FUNC4(s, "publish_done", NGX_RTMP_NOTIFY_PUBLISH_DONE);
    }

    if (ctx->flags & NGX_RTMP_NOTIFY_PLAYING) {
        FUNC4(s, "play_done", NGX_RTMP_NOTIFY_PLAY_DONE);
    }

    if (ctx->flags) {
        FUNC4(s, "done", NGX_RTMP_NOTIFY_DONE);
    }

    if (ctx->update_evt.timer_set) {
        FUNC1(&ctx->update_evt);
    }

    ctx->flags = 0;

next:
    return FUNC0(s, v);
}
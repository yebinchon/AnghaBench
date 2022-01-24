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
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_18__ {TYPE_1__* connection; } ;
typedef  TYPE_2__ ngx_rtmp_session_t ;
struct TYPE_19__ {int /*<<< orphan*/  silent; int /*<<< orphan*/  name; scalar_t__ reset; scalar_t__ duration; scalar_t__ start; } ;
typedef  TYPE_3__ ngx_rtmp_play_t ;
struct TYPE_20__ {int /*<<< orphan*/  silent; } ;
typedef  TYPE_4__ ngx_rtmp_live_ctx_t ;
struct TYPE_21__ {int /*<<< orphan*/  play_restart; int /*<<< orphan*/  live; } ;
typedef  TYPE_5__ ngx_rtmp_live_app_conf_t ;
typedef  int /*<<< orphan*/  ngx_int_t ;
struct TYPE_17__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_LOG_DEBUG_RTMP ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_rtmp_live_module ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,char*,char*,char*) ; 

__attribute__((used)) static ngx_int_t
FUNC7(ngx_rtmp_session_t *s, ngx_rtmp_play_t *v)
{
    ngx_rtmp_live_app_conf_t       *lacf;
    ngx_rtmp_live_ctx_t            *ctx;

    lacf = FUNC2(s, ngx_rtmp_live_module);

    if (lacf == NULL || !lacf->live) {
        goto next;
    }

    FUNC1(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
                   "live: play: name='%s' start=%uD duration=%uD reset=%d",
                   v->name, (uint32_t) v->start,
                   (uint32_t) v->duration, (uint32_t) v->reset);

    /* join stream as subscriber */

    FUNC4(s, v->name, 0);

    ctx = FUNC3(s, ngx_rtmp_live_module);
    if (ctx == NULL) {
        goto next;
    }

    ctx->silent = v->silent;

    if (!ctx->silent && !lacf->play_restart) {
        FUNC6(s, "NetStream.Play.Start",
                             "status", "Start live");
        FUNC5(s);
    }

next:
    return FUNC0(s, v);
}
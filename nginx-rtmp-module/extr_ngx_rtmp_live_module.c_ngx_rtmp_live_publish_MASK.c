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
struct TYPE_17__ {TYPE_1__* connection; } ;
typedef  TYPE_2__ ngx_rtmp_session_t ;
struct TYPE_18__ {int /*<<< orphan*/  silent; int /*<<< orphan*/  name; int /*<<< orphan*/  type; } ;
typedef  TYPE_3__ ngx_rtmp_publish_t ;
struct TYPE_19__ {int /*<<< orphan*/  silent; int /*<<< orphan*/  publishing; } ;
typedef  TYPE_4__ ngx_rtmp_live_ctx_t ;
struct TYPE_20__ {int /*<<< orphan*/  live; } ;
typedef  TYPE_5__ ngx_rtmp_live_app_conf_t ;
typedef  int /*<<< orphan*/  ngx_int_t ;
struct TYPE_16__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_LOG_DEBUG_RTMP ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ngx_rtmp_live_module ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char*,char*,char*) ; 

__attribute__((used)) static ngx_int_t
FUNC6(ngx_rtmp_session_t *s, ngx_rtmp_publish_t *v)
{
    ngx_rtmp_live_app_conf_t       *lacf;
    ngx_rtmp_live_ctx_t            *ctx;

    lacf = FUNC2(s, ngx_rtmp_live_module);

    if (lacf == NULL || !lacf->live) {
        goto next;
    }

    FUNC1(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
                   "live: publish: name='%s' type='%s'",
                   v->name, v->type);

    /* join stream as publisher */

    FUNC4(s, v->name, 1);

    ctx = FUNC3(s, ngx_rtmp_live_module);
    if (ctx == NULL || !ctx->publishing) {
        goto next;
    }

    ctx->silent = v->silent;

    if (!ctx->silent) {
        FUNC5(s, "NetStream.Publish.Start",
                             "status", "Start publishing");
    }

next:
    return FUNC0(s, v);
}
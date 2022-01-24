#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ngx_rtmp_session_t ;
struct TYPE_9__ {int /*<<< orphan*/  name; int /*<<< orphan*/  args; } ;
typedef  TYPE_1__ ngx_rtmp_play_t ;
struct TYPE_10__ {int counter; int /*<<< orphan*/  pull_exec; } ;
typedef  TYPE_2__ ngx_rtmp_exec_pull_ctx_t ;
struct TYPE_11__ {TYPE_2__* pull; } ;
typedef  TYPE_3__ ngx_rtmp_exec_ctx_t ;
struct TYPE_12__ {int /*<<< orphan*/ * conf; int /*<<< orphan*/  active; } ;
typedef  TYPE_4__ ngx_rtmp_exec_app_conf_t ;
typedef  int /*<<< orphan*/  ngx_int_t ;

/* Variables and functions */
 scalar_t__ NGX_OK ; 
 size_t NGX_RTMP_EXEC_PLAY ; 
 int /*<<< orphan*/  NGX_RTMP_EXEC_PLAYING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  ngx_rtmp_exec_module ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 TYPE_4__* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ngx_int_t
FUNC7(ngx_rtmp_session_t *s, ngx_rtmp_play_t *v)
{
    ngx_rtmp_exec_ctx_t       *ctx;
    ngx_rtmp_exec_pull_ctx_t  *pctx;
    ngx_rtmp_exec_app_conf_t  *eacf;

    eacf = FUNC5(s, ngx_rtmp_exec_module);

    if (eacf == NULL || !eacf->active) {
        goto next;
    }

    if (FUNC1(s, v->name, v->args, NGX_RTMP_EXEC_PLAYING)
        != NGX_OK)
    {
        goto next;
    }

    FUNC4(s, &eacf->conf[NGX_RTMP_EXEC_PLAY], "play");

    if (FUNC2(s, v->name) != NGX_OK) {
        goto next;
    }

    ctx = FUNC6(s, ngx_rtmp_exec_module);
    pctx = ctx->pull;

    if (pctx && pctx->counter == 1) {
        FUNC3(s, &pctx->pull_exec, "pull");
    }

next:
    return FUNC0(s, v);
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {TYPE_1__* connection; } ;
typedef  TYPE_2__ ngx_rtmp_session_t ;
struct TYPE_12__ {scalar_t__ opened; int /*<<< orphan*/  id; int /*<<< orphan*/  audio; int /*<<< orphan*/  video; } ;
typedef  TYPE_3__ ngx_rtmp_dash_ctx_t ;
typedef  int /*<<< orphan*/  ngx_int_t ;
struct TYPE_10__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_LOG_DEBUG_RTMP ; 
 int /*<<< orphan*/  NGX_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ngx_rtmp_dash_module ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 TYPE_3__* FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ngx_int_t
FUNC5(ngx_rtmp_session_t *s)
{
    ngx_rtmp_dash_ctx_t  *ctx;

    ctx = FUNC4(s, ngx_rtmp_dash_module);
    if (ctx == NULL || !ctx->opened) {
        return NGX_OK;
    }

    FUNC0(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
                   "dash: close fragments");

    FUNC1(s, &ctx->video);
    FUNC1(s, &ctx->audio);

    FUNC2(s);

    FUNC3(s);

    ctx->id++;
    ctx->opened = 0;

    return NGX_OK;
}
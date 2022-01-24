#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  size_t ngx_uint_t ;
struct TYPE_11__ {TYPE_1__* connection; } ;
typedef  TYPE_2__ ngx_rtmp_session_t ;
struct TYPE_12__ {scalar_t__ joined; struct TYPE_12__* next; int /*<<< orphan*/  name; } ;
typedef  TYPE_3__ ngx_rtmp_play_ctx_t ;
struct TYPE_13__ {size_t nbuckets; TYPE_3__** ctx; } ;
typedef  TYPE_4__ ngx_rtmp_play_app_conf_t ;
typedef  int /*<<< orphan*/  ngx_int_t ;
struct TYPE_10__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_ERROR ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_RTMP ; 
 int /*<<< orphan*/  NGX_OK ; 
 size_t FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 TYPE_4__* FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_rtmp_play_module ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ngx_int_t
FUNC5(ngx_rtmp_session_t *s)
{
    ngx_rtmp_play_ctx_t        *ctx, **pctx;
    ngx_rtmp_play_app_conf_t   *pacf;
    ngx_uint_t                  h;

    FUNC1(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
                   "play: leave");

    pacf = FUNC2(s, ngx_rtmp_play_module);

    ctx = FUNC3(s, ngx_rtmp_play_module);
    if (ctx == NULL || !ctx->joined) {
        return NGX_ERROR;
    }

    h = FUNC0(ctx->name, FUNC4(ctx->name));
    pctx = &pacf->ctx[h % pacf->nbuckets];

    while (*pctx && *pctx != ctx) {
        pctx = &(*pctx)->next;
    }

    if (*pctx == NULL) {
        return NGX_ERROR;
    }

    *pctx = (*pctx)->next;
    ctx->joined = 0;

    return NGX_OK;
}
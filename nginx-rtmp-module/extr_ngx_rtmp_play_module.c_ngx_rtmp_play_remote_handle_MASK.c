#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {TYPE_1__* connection; } ;
typedef  TYPE_2__ ngx_rtmp_session_t ;
struct TYPE_16__ {int /*<<< orphan*/  start; int /*<<< orphan*/  name; } ;
typedef  TYPE_3__ ngx_rtmp_play_t ;
struct TYPE_17__ {scalar_t__ nbody; scalar_t__ file_id; } ;
typedef  TYPE_4__ ngx_rtmp_play_ctx_t ;
typedef  int /*<<< orphan*/  ngx_int_t ;
typedef  int /*<<< orphan*/  ngx_chain_t ;
struct TYPE_14__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_ERROR ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_RTMP ; 
 scalar_t__ NGX_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 TYPE_4__* FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_rtmp_play_module ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,TYPE_3__*) ; 
 scalar_t__ FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ngx_int_t
FUNC6(ngx_rtmp_session_t *s, void *arg, ngx_chain_t *in)
{
    ngx_rtmp_play_t        *v = arg;

    ngx_rtmp_play_ctx_t    *ctx;

    ctx = FUNC2(s, ngx_rtmp_play_module);

    if (ctx->nbody == 0) {
        return FUNC4(s, v);
    }

    if (ctx->file_id) {
        FUNC3(s, v->name);
    }

    FUNC1(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
                   "play: open remote file");

    if (FUNC5(s, v->start) != NGX_OK) {
        return NGX_ERROR;
    }

    return FUNC0(s, (ngx_rtmp_play_t *)arg);
}
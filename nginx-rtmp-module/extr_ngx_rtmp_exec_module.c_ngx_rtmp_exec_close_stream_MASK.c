#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_9__ ;
typedef  struct TYPE_25__   TYPE_8__ ;
typedef  struct TYPE_24__   TYPE_7__ ;
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
struct TYPE_22__ {TYPE_2__* connection; } ;
typedef  TYPE_5__ ngx_rtmp_session_t ;
struct TYPE_23__ {int /*<<< orphan*/  kill_signal; } ;
typedef  TYPE_6__ ngx_rtmp_exec_t ;
struct TYPE_21__ {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct TYPE_20__ {size_t nelts; TYPE_6__* elts; } ;
struct TYPE_24__ {scalar_t__ counter; int /*<<< orphan*/  pool; struct TYPE_24__* next; TYPE_4__ name; TYPE_3__ pull_exec; } ;
typedef  TYPE_7__ ngx_rtmp_exec_pull_ctx_t ;
struct TYPE_18__ {size_t nelts; TYPE_6__* elts; } ;
struct TYPE_25__ {int flags; TYPE_7__* pull; TYPE_1__ push_exec; } ;
typedef  TYPE_8__ ngx_rtmp_exec_ctx_t ;
struct TYPE_26__ {size_t nbuckets; TYPE_7__** pull; int /*<<< orphan*/ * conf; } ;
typedef  TYPE_9__ ngx_rtmp_exec_app_conf_t ;
typedef  int /*<<< orphan*/  ngx_rtmp_close_stream_t ;
typedef  int /*<<< orphan*/  ngx_int_t ;
struct TYPE_19__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_LOG_DEBUG_RTMP ; 
 int NGX_RTMP_EXEC_PLAYING ; 
 size_t NGX_RTMP_EXEC_PLAY_DONE ; 
 int NGX_RTMP_EXEC_PUBLISHING ; 
 size_t NGX_RTMP_EXEC_PUBLISH_DONE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 size_t FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_rtmp_exec_module ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,int /*<<< orphan*/ *,char*) ; 
 TYPE_9__* FUNC6 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 TYPE_8__* FUNC7 (TYPE_5__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ngx_int_t
FUNC8(ngx_rtmp_session_t *s, ngx_rtmp_close_stream_t *v)
{
    size_t                     n;
    ngx_rtmp_exec_t           *e;
    ngx_rtmp_exec_ctx_t       *ctx;
    ngx_rtmp_exec_pull_ctx_t  *pctx, **ppctx;
    ngx_rtmp_exec_app_conf_t  *eacf;

    eacf = FUNC6(s, ngx_rtmp_exec_module);
    if (eacf == NULL) {
        goto next;
    }

    ctx = FUNC7(s, ngx_rtmp_exec_module);
    if (ctx == NULL) {
        goto next;
    }

    if (ctx->flags & NGX_RTMP_EXEC_PUBLISHING) {
        FUNC5(s, &eacf->conf[NGX_RTMP_EXEC_PUBLISH_DONE],
                                "publish_done");
    }

    if (ctx->flags & NGX_RTMP_EXEC_PLAYING) {
        FUNC5(s, &eacf->conf[NGX_RTMP_EXEC_PLAY_DONE],
                                "play_done");
    }

    ctx->flags = 0;

    if (ctx->push_exec.nelts > 0) {
        FUNC3(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
                       "exec: delete %uz push command(s)",
                       ctx->push_exec.nelts);

        e = ctx->push_exec.elts;
        for (n = 0; n < ctx->push_exec.nelts; n++, e++) {
            FUNC4(e, e->kill_signal);
        }
    }

    pctx = ctx->pull;

    if (pctx && --pctx->counter == 0) {
        FUNC3(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
                       "exec: delete %uz pull command(s)",
                       pctx->pull_exec.nelts);

        e = pctx->pull_exec.elts;
        for (n = 0; n < pctx->pull_exec.nelts; n++, e++) {
            FUNC4(e, e->kill_signal);
        }

        ppctx = &eacf->pull[FUNC2(pctx->name.data, pctx->name.len) %
                            eacf->nbuckets];

        for (; *ppctx; ppctx = &(*ppctx)->next) {
            if (pctx == *ppctx) {
                *ppctx = pctx->next;
                break;
            }
        }

        FUNC1(pctx->pool);
    }

    ctx->pull = NULL;

next:
    return FUNC0(s, v);
}
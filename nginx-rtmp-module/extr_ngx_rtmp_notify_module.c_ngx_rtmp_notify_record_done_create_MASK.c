#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  ngx_rtmp_session_t ;
struct TYPE_14__ {int len; int /*<<< orphan*/ * data; } ;
struct TYPE_13__ {int len; int /*<<< orphan*/ * data; } ;
struct TYPE_15__ {TYPE_2__ path; TYPE_1__ recorder; } ;
typedef  TYPE_3__ ngx_rtmp_record_done_t ;
struct TYPE_16__ {int /*<<< orphan*/ * args; int /*<<< orphan*/ * name; } ;
typedef  TYPE_4__ ngx_rtmp_notify_ctx_t ;
typedef  int /*<<< orphan*/  ngx_pool_t ;
struct TYPE_17__ {int /*<<< orphan*/ * next; TYPE_6__* buf; } ;
typedef  TYPE_5__ ngx_chain_t ;
struct TYPE_18__ {int /*<<< orphan*/ * last; } ;
typedef  TYPE_6__ ngx_buf_t ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_ESCAPE_ARGS ; 
 int /*<<< orphan*/  NGX_RTMP_NOTIFY_RECORD_DONE ; 
 TYPE_5__* FUNC0 (int /*<<< orphan*/ *) ; 
 void* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 TYPE_6__* FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_5__*) ; 
 int /*<<< orphan*/  ngx_rtmp_notify_module ; 
 size_t FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ngx_chain_t *
FUNC7(ngx_rtmp_session_t *s, void *arg,
                                   ngx_pool_t *pool)
{
    ngx_rtmp_record_done_t         *v = arg;

    ngx_rtmp_notify_ctx_t          *ctx;
    ngx_chain_t                    *pl;
    ngx_buf_t                      *b;
    size_t                          name_len, args_len;

    ctx = FUNC4(s, ngx_rtmp_notify_module);

    pl = FUNC0(pool);
    if (pl == NULL) {
        return NULL;
    }

    name_len  = FUNC6(ctx->name);
    args_len  = FUNC6(ctx->args);

    b = FUNC2(pool,
                            sizeof("&call=record_done") +
                            sizeof("&recorder=") + v->recorder.len +
                            sizeof("&name=") + name_len * 3 +
                            sizeof("&path=") + v->path.len * 3 +
                            1 + args_len);
    if (b == NULL) {
        return NULL;
    }

    pl->buf = b;
    pl->next = NULL;

    b->last = FUNC1(b->last, (u_char*) "&call=record_done",
                         sizeof("&call=record_done") - 1);

    b->last = FUNC1(b->last, (u_char *) "&recorder=",
                         sizeof("&recorder=") - 1);
    b->last = (u_char*) FUNC3(b->last, v->recorder.data,
                                       v->recorder.len, NGX_ESCAPE_ARGS);

    b->last = FUNC1(b->last, (u_char*) "&name=", sizeof("&name=") - 1);
    b->last = (u_char*) FUNC3(b->last, ctx->name, name_len,
                                       NGX_ESCAPE_ARGS);

    b->last = FUNC1(b->last, (u_char*) "&path=", sizeof("&path=") - 1);
    b->last = (u_char*) FUNC3(b->last, v->path.data, v->path.len,
                                       NGX_ESCAPE_ARGS);

    if (args_len) {
        *b->last++ = '&';
        b->last = (u_char *) FUNC1(b->last, ctx->args, args_len);
    }

    return FUNC5(s, pool, NGX_RTMP_NOTIFY_RECORD_DONE,
                                          pl);
}
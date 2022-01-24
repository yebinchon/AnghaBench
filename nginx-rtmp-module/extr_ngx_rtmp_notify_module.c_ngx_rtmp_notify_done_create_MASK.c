#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  ngx_rtmp_session_t ;
struct TYPE_11__ {int /*<<< orphan*/  url_idx; int /*<<< orphan*/ * cbname; } ;
typedef  TYPE_1__ ngx_rtmp_notify_done_t ;
struct TYPE_12__ {int /*<<< orphan*/ * args; int /*<<< orphan*/ * name; } ;
typedef  TYPE_2__ ngx_rtmp_notify_ctx_t ;
typedef  int /*<<< orphan*/  ngx_pool_t ;
struct TYPE_13__ {int /*<<< orphan*/ * next; TYPE_4__* buf; } ;
typedef  TYPE_3__ ngx_chain_t ;
struct TYPE_14__ {int /*<<< orphan*/ * last; } ;
typedef  TYPE_4__ ngx_buf_t ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_ESCAPE_ARGS ; 
 TYPE_3__* FUNC0 (int /*<<< orphan*/ *) ; 
 void* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 TYPE_4__* FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  ngx_rtmp_notify_module ; 
 size_t FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ngx_chain_t *
FUNC7(ngx_rtmp_session_t *s, void *arg,
        ngx_pool_t *pool)
{
    ngx_rtmp_notify_done_t         *ds = arg;

    ngx_chain_t                    *pl;
    ngx_buf_t                      *b;
    size_t                          cbname_len, name_len, args_len;
    ngx_rtmp_notify_ctx_t          *ctx;

    ctx = FUNC4(s, ngx_rtmp_notify_module);

    pl = FUNC0(pool);
    if (pl == NULL) {
        return NULL;
    }

    cbname_len = FUNC6(ds->cbname);
    name_len = ctx ? FUNC6(ctx->name) : 0;
    args_len = ctx ? FUNC6(ctx->args) : 0;

    b = FUNC2(pool,
                            sizeof("&call=") + cbname_len +
                            sizeof("&name=") + name_len * 3 +
                            1 + args_len);
    if (b == NULL) {
        return NULL;
    }

    pl->buf = b;
    pl->next = NULL;

    b->last = FUNC1(b->last, (u_char*) "&call=", sizeof("&call=") - 1);
    b->last = FUNC1(b->last, ds->cbname, cbname_len);

    if (name_len) {
        b->last = FUNC1(b->last, (u_char*) "&name=", sizeof("&name=") - 1);
        b->last = (u_char*) FUNC3(b->last, ctx->name, name_len,
                                           NGX_ESCAPE_ARGS);
    }

    if (args_len) {
        *b->last++ = '&';
        b->last = (u_char *) FUNC1(b->last, ctx->args, args_len);
    }

    return FUNC5(s, pool, ds->url_idx, pl);
}
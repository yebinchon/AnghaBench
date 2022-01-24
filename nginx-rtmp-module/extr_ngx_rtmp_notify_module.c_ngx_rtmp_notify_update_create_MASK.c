#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;
typedef  struct TYPE_18__   TYPE_16__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_19__ {size_t len; int /*<<< orphan*/ * data; } ;
typedef  TYPE_1__ ngx_str_t ;
struct TYPE_20__ {scalar_t__ current_time; } ;
typedef  TYPE_2__ ngx_rtmp_session_t ;
struct TYPE_21__ {int flags; int /*<<< orphan*/ * args; int /*<<< orphan*/ * name; scalar_t__ start; } ;
typedef  TYPE_3__ ngx_rtmp_notify_ctx_t ;
typedef  int /*<<< orphan*/  ngx_pool_t ;
struct TYPE_22__ {int /*<<< orphan*/ * next; TYPE_5__* buf; } ;
typedef  TYPE_4__ ngx_chain_t ;
struct TYPE_23__ {int /*<<< orphan*/ * last; } ;
typedef  TYPE_5__ ngx_buf_t ;
struct TYPE_18__ {scalar_t__ sec; } ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_ESCAPE_ARGS ; 
 int NGX_INT32_LEN ; 
 int NGX_RTMP_NOTIFY_PLAYING ; 
 int NGX_RTMP_NOTIFY_PUBLISHING ; 
 int /*<<< orphan*/  NGX_RTMP_NOTIFY_UPDATE ; 
 int NGX_TIME_T_LEN ; 
 TYPE_4__* FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_16__* ngx_cached_time ; 
 void* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 TYPE_5__* FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC5 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  ngx_rtmp_notify_module ; 
 void* FUNC6 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,char*) ; 
 size_t FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ngx_chain_t *
FUNC10(ngx_rtmp_session_t *s, void *arg,
        ngx_pool_t *pool)
{
    ngx_chain_t                    *pl;
    ngx_buf_t                      *b;
    size_t                          name_len, args_len;
    ngx_rtmp_notify_ctx_t          *ctx;
    ngx_str_t                       sfx;

    ctx = FUNC4(s, ngx_rtmp_notify_module);

    pl = FUNC0(pool);
    if (pl == NULL) {
        return NULL;
    }

    if (ctx->flags & NGX_RTMP_NOTIFY_PUBLISHING) {
        FUNC8(&sfx, "_publish");
    } else if (ctx->flags & NGX_RTMP_NOTIFY_PLAYING) {
        FUNC8(&sfx, "_play");
    } else {
        FUNC7(&sfx);
    }

    name_len = ctx ? FUNC9(ctx->name) : 0;
    args_len = ctx ? FUNC9(ctx->args) : 0;

    b = FUNC2(pool,
                            sizeof("&call=update") + sfx.len +
                            sizeof("&time=") + NGX_TIME_T_LEN +
                            sizeof("&timestamp=") + NGX_INT32_LEN +
                            sizeof("&name=") + name_len * 3 +
                            1 + args_len);
    if (b == NULL) {
        return NULL;
    }

    pl->buf = b;
    pl->next = NULL;

    b->last = FUNC1(b->last, (u_char*) "&call=update",
                         sizeof("&call=update") - 1);
    b->last = FUNC1(b->last, sfx.data, sfx.len);

    b->last = FUNC1(b->last, (u_char *) "&time=",
                         sizeof("&time=") - 1);
    b->last = FUNC6(b->last, "%T", ngx_cached_time->sec - ctx->start);

    b->last = FUNC1(b->last, (u_char *) "&timestamp=",
                         sizeof("&timestamp=") - 1);
    b->last = FUNC6(b->last, "%D", s->current_time);

    if (name_len) {
        b->last = FUNC1(b->last, (u_char*) "&name=", sizeof("&name=") - 1);
        b->last = (u_char*) FUNC3(b->last, ctx->name, name_len,
                                           NGX_ESCAPE_ARGS);
    }

    if (args_len) {
        *b->last++ = '&';
        b->last = (u_char *) FUNC1(b->last, ctx->args, args_len);
    }

    return FUNC5(s, pool, NGX_RTMP_NOTIFY_UPDATE, pl);
}
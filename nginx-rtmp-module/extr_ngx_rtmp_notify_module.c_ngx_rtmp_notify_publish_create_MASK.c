#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  ngx_rtmp_session_t ;
struct TYPE_9__ {int /*<<< orphan*/ * args; int /*<<< orphan*/ * type; int /*<<< orphan*/ * name; } ;
typedef  TYPE_1__ ngx_rtmp_publish_t ;
typedef  int /*<<< orphan*/  ngx_pool_t ;
struct TYPE_10__ {int /*<<< orphan*/ * next; TYPE_3__* buf; } ;
typedef  TYPE_2__ ngx_chain_t ;
struct TYPE_11__ {int /*<<< orphan*/ * last; } ;
typedef  TYPE_3__ ngx_buf_t ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_ESCAPE_ARGS ; 
 int /*<<< orphan*/  NGX_RTMP_NOTIFY_PUBLISH ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *) ; 
 void* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*) ; 
 size_t FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ngx_chain_t *
FUNC6(ngx_rtmp_session_t *s, void *arg,
        ngx_pool_t *pool)
{
    ngx_rtmp_publish_t             *v = arg;

    ngx_chain_t                    *pl;
    ngx_buf_t                      *b;
    size_t                          name_len, type_len, args_len;

    pl = FUNC0(pool);
    if (pl == NULL) {
        return NULL;
    }

    name_len = FUNC5(v->name);
    type_len = FUNC5(v->type);
    args_len = FUNC5(v->args);

    b = FUNC2(pool,
                            sizeof("&call=publish") +
                            sizeof("&name=") + name_len * 3 +
                            sizeof("&type=") + type_len * 3 +
                            1 + args_len);
    if (b == NULL) {
        return NULL;
    }

    pl->buf = b;
    pl->next = NULL;

    b->last = FUNC1(b->last, (u_char*) "&call=publish",
                         sizeof("&call=publish") - 1);

    b->last = FUNC1(b->last, (u_char*) "&name=", sizeof("&name=") - 1);
    b->last = (u_char*) FUNC3(b->last, v->name, name_len,
                                       NGX_ESCAPE_ARGS);

    b->last = FUNC1(b->last, (u_char*) "&type=", sizeof("&type=") - 1);
    b->last = (u_char*) FUNC3(b->last, v->type, type_len,
                                       NGX_ESCAPE_ARGS);

    if (args_len) {
        *b->last++ = '&';
        b->last = (u_char *) FUNC1(b->last, v->args, args_len);
    }

    return FUNC4(s, pool, NGX_RTMP_NOTIFY_PUBLISH, pl);
}
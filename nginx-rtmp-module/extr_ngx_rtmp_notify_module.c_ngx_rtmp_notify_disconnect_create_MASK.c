#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_7__ ;
typedef  struct TYPE_24__   TYPE_6__ ;
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_21__ {int /*<<< orphan*/  uri; int /*<<< orphan*/  host; } ;
typedef  TYPE_3__ ngx_url_t ;
struct TYPE_20__ {int len; int /*<<< orphan*/ * data; } ;
struct TYPE_19__ {int len; int /*<<< orphan*/  data; } ;
struct TYPE_22__ {TYPE_2__ args; TYPE_1__ app; } ;
typedef  TYPE_4__ ngx_rtmp_session_t ;
struct TYPE_23__ {scalar_t__ method; TYPE_3__** url; } ;
typedef  TYPE_5__ ngx_rtmp_notify_srv_conf_t ;
typedef  int /*<<< orphan*/  ngx_pool_t ;
struct TYPE_24__ {struct TYPE_24__* next; TYPE_7__* buf; } ;
typedef  TYPE_6__ ngx_chain_t ;
struct TYPE_25__ {int /*<<< orphan*/ * last; } ;
typedef  TYPE_7__ ngx_buf_t ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_ESCAPE_ARGS ; 
 scalar_t__ NGX_RTMP_NETCALL_HTTP_POST ; 
 size_t NGX_RTMP_NOTIFY_DISCONNECT ; 
 TYPE_6__* FUNC0 (int /*<<< orphan*/ *) ; 
 void* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 TYPE_7__* FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC4 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 TYPE_6__* FUNC5 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_6__*,TYPE_6__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_6__* FUNC6 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ngx_rtmp_notify_module ; 
 int /*<<< orphan*/  ngx_rtmp_notify_urlencoded ; 

__attribute__((used)) static ngx_chain_t *
FUNC7(ngx_rtmp_session_t *s, void *arg,
        ngx_pool_t *pool)
{
    ngx_rtmp_notify_srv_conf_t     *nscf;
    ngx_url_t                      *url;
    ngx_chain_t                    *al, *bl, *pl;
    ngx_buf_t                      *b;

    nscf = FUNC4(s, ngx_rtmp_notify_module);

    pl = FUNC0(pool);
    if (pl == NULL) {
        return NULL;
    }

    b = FUNC2(pool,
                            sizeof("&call=disconnect") +
                            sizeof("&app=") + s->app.len * 3 +
                            1 + s->args.len);
    if (b == NULL) {
        return NULL;
    }

    pl->buf = b;
    pl->next = NULL;

    b->last = FUNC1(b->last, (u_char*) "&call=disconnect",
                         sizeof("&call=disconnect") - 1);

    b->last = FUNC1(b->last, (u_char*) "&app=", sizeof("&app=") - 1);
    b->last = (u_char*) FUNC3(b->last, s->app.data, s->app.len,
                                       NGX_ESCAPE_ARGS);

    if (s->args.len) {
        *b->last++ = '&';
        b->last = (u_char *) FUNC1(b->last, s->args.data, s->args.len);
    }

    url = nscf->url[NGX_RTMP_NOTIFY_DISCONNECT];

    al = FUNC6(s, pool);
    if (al == NULL) {
        return NULL;
    }

    al->next = pl;

    bl = NULL;

    if (nscf->method == NGX_RTMP_NETCALL_HTTP_POST) {
        bl = al;
        al = NULL;
    }

    return FUNC5(nscf->method, &url->host,
                                                &url->uri, al, bl, pool,
                                                &ngx_rtmp_notify_urlencoded);
}
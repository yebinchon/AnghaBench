#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_27__   TYPE_9__ ;
typedef  struct TYPE_26__   TYPE_8__ ;
typedef  struct TYPE_25__   TYPE_7__ ;
typedef  struct TYPE_24__   TYPE_6__ ;
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
typedef  size_t ngx_uint_t ;
struct TYPE_21__ {scalar_t__ tries; int /*<<< orphan*/  start_time; } ;
struct TYPE_22__ {TYPE_3__ peer; TYPE_5__* resolved; } ;
typedef  TYPE_4__ ngx_stream_upstream_t ;
struct TYPE_23__ {size_t naddrs; int /*<<< orphan*/ * ctx; TYPE_1__* addrs; } ;
typedef  TYPE_5__ ngx_stream_upstream_resolved_t ;
struct TYPE_24__ {TYPE_2__* connection; TYPE_4__* upstream; } ;
typedef  TYPE_6__ ngx_stream_session_t ;
struct TYPE_25__ {scalar_t__ next_upstream_tries; } ;
typedef  TYPE_7__ ngx_stream_proxy_srv_conf_t ;
struct TYPE_26__ {int /*<<< orphan*/  len; int /*<<< orphan*/ * data; } ;
typedef  TYPE_8__ ngx_str_t ;
struct TYPE_27__ {size_t naddrs; TYPE_1__* addrs; scalar_t__ state; int /*<<< orphan*/  name; TYPE_6__* data; } ;
typedef  TYPE_9__ ngx_resolver_ctx_t ;
struct TYPE_20__ {int /*<<< orphan*/  log; } ;
struct TYPE_19__ {int /*<<< orphan*/  socklen; int /*<<< orphan*/  sockaddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_LOG_DEBUG_STREAM ; 
 int /*<<< orphan*/  NGX_LOG_ERR ; 
 scalar_t__ NGX_OK ; 
 int NGX_SOCKADDR_STRLEN ; 
 int /*<<< orphan*/  NGX_STREAM_INTERNAL_SERVER_ERROR ; 
 int /*<<< orphan*/  ngx_current_msec ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 TYPE_7__* FUNC6 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_stream_proxy_module ; 
 scalar_t__ FUNC9 (TYPE_6__*,TYPE_5__*) ; 

__attribute__((used)) static void
FUNC10(ngx_resolver_ctx_t *ctx)
{
    ngx_stream_session_t            *s;
    ngx_stream_upstream_t           *u;
    ngx_stream_proxy_srv_conf_t     *pscf;
    ngx_stream_upstream_resolved_t  *ur;

    s = ctx->data;

    u = s->upstream;
    ur = u->resolved;

    FUNC0(NGX_LOG_DEBUG_STREAM, s->connection->log, 0,
                   "stream upstream resolve");

    if (ctx->state) {
        FUNC2(NGX_LOG_ERR, s->connection->log, 0,
                      "%V could not be resolved (%i: %s)",
                      &ctx->name, ctx->state,
                      FUNC4(ctx->state));

        FUNC8(s, NGX_STREAM_INTERNAL_SERVER_ERROR);
        return;
    }

    ur->naddrs = ctx->naddrs;
    ur->addrs = ctx->addrs;

#if (NGX_DEBUG)
    {
    u_char      text[NGX_SOCKADDR_STRLEN];
    ngx_str_t   addr;
    ngx_uint_t  i;

    addr.data = text;

    for (i = 0; i < ctx->naddrs; i++) {
        addr.len = ngx_sock_ntop(ur->addrs[i].sockaddr, ur->addrs[i].socklen,
                                 text, NGX_SOCKADDR_STRLEN, 0);

        ngx_log_debug1(NGX_LOG_DEBUG_STREAM, s->connection->log, 0,
                       "name was resolved to %V", &addr);
    }
    }
#endif

    if (FUNC9(s, ur) != NGX_OK) {
        FUNC8(s, NGX_STREAM_INTERNAL_SERVER_ERROR);
        return;
    }

    FUNC3(ctx);
    ur->ctx = NULL;

    u->peer.start_time = ngx_current_msec;

    pscf = FUNC6(s, ngx_stream_proxy_module);

    if (pscf->next_upstream_tries
        && u->peer.tries > pscf->next_upstream_tries)
    {
        u->peer.tries = pscf->next_upstream_tries;
    }

    FUNC7(s);
}
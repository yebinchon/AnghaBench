#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_29__   TYPE_8__ ;
typedef  struct TYPE_28__   TYPE_7__ ;
typedef  struct TYPE_27__   TYPE_6__ ;
typedef  struct TYPE_26__   TYPE_5__ ;
typedef  struct TYPE_25__   TYPE_4__ ;
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;
typedef  struct TYPE_21__   TYPE_12__ ;

/* Type definitions */
struct TYPE_23__ {TYPE_8__* connection; } ;
typedef  TYPE_2__ ngx_rtmp_session_t ;
struct TYPE_24__ {int /*<<< orphan*/  log; int /*<<< orphan*/  bufsize; int /*<<< orphan*/  timeout; } ;
typedef  TYPE_3__ ngx_rtmp_netcall_srv_conf_t ;
struct TYPE_25__ {int detached; struct TYPE_25__* next; int /*<<< orphan*/ * out; TYPE_7__* pc; int /*<<< orphan*/ * handle; int /*<<< orphan*/  sink; int /*<<< orphan*/  filter; TYPE_2__* session; int /*<<< orphan*/  url; int /*<<< orphan*/  bufsize; int /*<<< orphan*/  timeout; int /*<<< orphan*/ * arg; } ;
typedef  TYPE_4__ ngx_rtmp_netcall_session_t ;
struct TYPE_26__ {int argsize; int /*<<< orphan*/  arg; int /*<<< orphan*/ * (* create ) (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;int /*<<< orphan*/ * handle; int /*<<< orphan*/  sink; int /*<<< orphan*/  filter; int /*<<< orphan*/  url; } ;
typedef  TYPE_5__ ngx_rtmp_netcall_init_t ;
struct TYPE_27__ {TYPE_4__* cs; } ;
typedef  TYPE_6__ ngx_rtmp_netcall_ctx_t ;
typedef  int /*<<< orphan*/  ngx_pool_t ;
struct TYPE_28__ {TYPE_8__* connection; TYPE_4__* data; int /*<<< orphan*/  free; int /*<<< orphan*/  get; int /*<<< orphan*/  log; } ;
typedef  TYPE_7__ ngx_peer_connection_t ;
typedef  scalar_t__ ngx_int_t ;
struct TYPE_29__ {scalar_t__ destroyed; TYPE_12__* write; TYPE_1__* read; int /*<<< orphan*/  log; int /*<<< orphan*/ * pool; TYPE_4__* data; } ;
typedef  TYPE_8__ ngx_connection_t ;
struct TYPE_22__ {int /*<<< orphan*/  handler; } ;
struct TYPE_21__ {int /*<<< orphan*/  (* handler ) (TYPE_12__*) ;} ;

/* Variables and functions */
 scalar_t__ NGX_AGAIN ; 
 scalar_t__ NGX_ERROR ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_RTMP ; 
 scalar_t__ NGX_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_8__*) ; 
 int /*<<< orphan*/ * FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 void* FUNC6 (int /*<<< orphan*/ *,int) ; 
 TYPE_6__* FUNC7 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC8 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_rtmp_netcall_free_peer ; 
 int /*<<< orphan*/  ngx_rtmp_netcall_get_peer ; 
 int /*<<< orphan*/  ngx_rtmp_netcall_module ; 
 int /*<<< orphan*/  ngx_rtmp_netcall_recv ; 
 int /*<<< orphan*/  FUNC9 (TYPE_12__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC11 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

ngx_int_t
FUNC12(ngx_rtmp_session_t *s, ngx_rtmp_netcall_init_t *ci)
{
    ngx_rtmp_netcall_ctx_t         *ctx;
    ngx_peer_connection_t          *pc;
    ngx_rtmp_netcall_session_t     *cs;
    ngx_rtmp_netcall_srv_conf_t    *nscf;
    ngx_connection_t               *c, *cc;
    ngx_pool_t                     *pool;
    ngx_int_t                       rc;

    pool = NULL;
    c = s->connection;

    nscf = FUNC8(s, ngx_rtmp_netcall_module);
    if (nscf == NULL) {
        goto error;
    }

    /* get module context */
    ctx = FUNC7(s, ngx_rtmp_netcall_module);
    if (ctx == NULL) {
        ctx = FUNC6(c->pool,
                sizeof(ngx_rtmp_netcall_ctx_t));
        if (ctx == NULL) {
            return NGX_ERROR;
        }
        FUNC10(s, ctx, ngx_rtmp_netcall_module);
    }

    /* Create netcall pool, connection, session.
     * Note we use shared (app-wide) log because
     * s->connection->log might be unavailable
     * in detached netcall when it's being closed */
    pool = FUNC1(4096, nscf->log);
    if (pool == NULL) {
        goto error;
    }

    pc = FUNC6(pool, sizeof(ngx_peer_connection_t));
    if (pc == NULL) {
        goto error;
    }

    cs = FUNC6(pool, sizeof(ngx_rtmp_netcall_session_t));
    if (cs == NULL) {
        goto error;
    }

    /* copy arg to connection pool */
    if (ci->argsize) {
        cs->arg = FUNC6(pool, ci->argsize);
        if (cs->arg == NULL) {
            goto error;
        }
        FUNC5(cs->arg, ci->arg, ci->argsize);
    }

    cs->timeout = nscf->timeout;
    cs->bufsize = nscf->bufsize;
    cs->url = ci->url;
    cs->session = s;
    cs->filter = ci->filter;
    cs->sink = ci->sink;
    cs->handle = ci->handle;
    if (cs->handle == NULL) {
        cs->detached = 1;
    }

    pc->log = nscf->log;
    pc->get = ngx_rtmp_netcall_get_peer;
    pc->free = ngx_rtmp_netcall_free_peer;
    pc->data = cs;

    /* connect */
    rc = FUNC3(pc);
    if (rc != NGX_OK && rc != NGX_AGAIN ) {
        FUNC4(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
                "netcall: connection failed");
        goto error;
    }

    cc = pc->connection;
    cc->data = cs;
    cc->pool = pool;
    cs->pc = pc;

    cs->out = ci->create(s, ci->arg, pool);
    if (cs->out == NULL) {
        FUNC4(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
                "netcall: creation failed");
        FUNC0(pc->connection);
        goto error;
    }

    cc->write->handler = ngx_rtmp_netcall_send;
    cc->read->handler = ngx_rtmp_netcall_recv;

    if (!cs->detached) {
        cs->next = ctx->cs;
        ctx->cs = cs;
    }

    FUNC9(cc->write);

    return c->destroyed ? NGX_ERROR : NGX_OK;

error:
    if (pool) {
        FUNC2(pool);
    }

    return NGX_ERROR;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_31__   TYPE_6__ ;
typedef  struct TYPE_30__   TYPE_5__ ;
typedef  struct TYPE_29__   TYPE_4__ ;
typedef  struct TYPE_28__   TYPE_3__ ;
typedef  struct TYPE_27__   TYPE_2__ ;
typedef  struct TYPE_26__   TYPE_20__ ;
typedef  struct TYPE_25__   TYPE_1__ ;
typedef  struct TYPE_24__   TYPE_19__ ;
typedef  struct TYPE_23__   TYPE_18__ ;
typedef  struct TYPE_22__   TYPE_13__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ngx_pool_t ;
struct TYPE_29__ {TYPE_3__* connection; } ;
typedef  TYPE_4__ ngx_mail_session_t ;
struct TYPE_23__ {TYPE_20__* connection; int /*<<< orphan*/  log_error; TYPE_19__* log; int /*<<< orphan*/  get; int /*<<< orphan*/ * name; int /*<<< orphan*/  socklen; int /*<<< orphan*/  sockaddr; } ;
struct TYPE_30__ {TYPE_18__ peer; int /*<<< orphan*/  handler; int /*<<< orphan*/ * pool; int /*<<< orphan*/ * request; } ;
typedef  TYPE_5__ ngx_mail_auth_http_ctx_t ;
struct TYPE_31__ {int /*<<< orphan*/  timeout; TYPE_1__* peer; } ;
typedef  TYPE_6__ ngx_mail_auth_http_conf_t ;
typedef  scalar_t__ ngx_int_t ;
struct TYPE_28__ {TYPE_2__* read; int /*<<< orphan*/  pool; TYPE_19__* log; } ;
struct TYPE_27__ {int /*<<< orphan*/  handler; } ;
struct TYPE_26__ {TYPE_13__* write; TYPE_13__* read; int /*<<< orphan*/  pool; TYPE_4__* data; } ;
struct TYPE_25__ {int /*<<< orphan*/  name; int /*<<< orphan*/  socklen; int /*<<< orphan*/  sockaddr; } ;
struct TYPE_24__ {char* action; } ;
struct TYPE_22__ {int /*<<< orphan*/  (* handler ) (TYPE_13__*) ;} ;

/* Variables and functions */
 scalar_t__ NGX_BUSY ; 
 scalar_t__ NGX_DECLINED ; 
 scalar_t__ NGX_ERROR ; 
 int /*<<< orphan*/  NGX_ERROR_ERR ; 
 scalar_t__ NGX_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_13__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_20__*) ; 
 int /*<<< orphan*/ * FUNC2 (int,TYPE_19__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (TYPE_18__*) ; 
 int /*<<< orphan*/  ngx_event_get_peer ; 
 int /*<<< orphan*/  ngx_mail_auth_http_block_read ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_4__*,int /*<<< orphan*/ *,TYPE_6__*) ; 
 int /*<<< orphan*/  ngx_mail_auth_http_ignore_status_line ; 
 int /*<<< orphan*/  ngx_mail_auth_http_module ; 
 int /*<<< orphan*/  FUNC6 (TYPE_13__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_13__*) ; 
 TYPE_6__* FUNC8 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,TYPE_5__*,int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC11 (int /*<<< orphan*/ *,int) ; 

void
FUNC12(ngx_mail_session_t *s)
{
    ngx_int_t                   rc;
    ngx_pool_t                 *pool;
    ngx_mail_auth_http_ctx_t   *ctx;
    ngx_mail_auth_http_conf_t  *ahcf;

    s->connection->log->action = "in http auth state";

    pool = FUNC2(2048, s->connection->log);
    if (pool == NULL) {
        FUNC9(s);
        return;
    }

    ctx = FUNC11(pool, sizeof(ngx_mail_auth_http_ctx_t));
    if (ctx == NULL) {
        FUNC3(pool);
        FUNC9(s);
        return;
    }

    ctx->pool = pool;

    ahcf = FUNC8(s, ngx_mail_auth_http_module);

    ctx->request = FUNC5(s, pool, ahcf);
    if (ctx->request == NULL) {
        FUNC3(ctx->pool);
        FUNC9(s);
        return;
    }

    FUNC10(s, ctx, ngx_mail_auth_http_module);

    ctx->peer.sockaddr = ahcf->peer->sockaddr;
    ctx->peer.socklen = ahcf->peer->socklen;
    ctx->peer.name = &ahcf->peer->name;
    ctx->peer.get = ngx_event_get_peer;
    ctx->peer.log = s->connection->log;
    ctx->peer.log_error = NGX_ERROR_ERR;

    rc = FUNC4(&ctx->peer);

    if (rc == NGX_ERROR || rc == NGX_BUSY || rc == NGX_DECLINED) {
        if (ctx->peer.connection) {
            FUNC1(ctx->peer.connection);
        }

        FUNC3(ctx->pool);
        FUNC9(s);
        return;
    }

    ctx->peer.connection->data = s;
    ctx->peer.connection->pool = s->connection->pool;

    s->connection->read->handler = ngx_mail_auth_http_block_read;
    ctx->peer.connection->read->handler = ngx_mail_auth_http_read_handler;
    ctx->peer.connection->write->handler = ngx_mail_auth_http_write_handler;

    ctx->handler = ngx_mail_auth_http_ignore_status_line;

    FUNC0(ctx->peer.connection->read, ahcf->timeout);
    FUNC0(ctx->peer.connection->write, ahcf->timeout);

    if (rc == NGX_OK) {
        FUNC7(ctx->peer.connection->write);
        return;
    }
}
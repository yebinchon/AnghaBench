#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_11__ ;

/* Type definitions */
typedef  scalar_t__ ngx_uint_t ;
struct TYPE_14__ {TYPE_6__* connection; } ;
struct TYPE_16__ {int requests; int responses; int /*<<< orphan*/  received; TYPE_1__ peer; scalar_t__ connected; } ;
typedef  TYPE_3__ ngx_stream_upstream_t ;
struct TYPE_17__ {int /*<<< orphan*/  received; TYPE_3__* upstream; TYPE_6__* connection; } ;
typedef  TYPE_4__ ngx_stream_session_t ;
struct TYPE_18__ {int requests; int responses; } ;
typedef  TYPE_5__ ngx_stream_proxy_srv_conf_t ;
typedef  void* ngx_log_handler_pt ;
typedef  int /*<<< orphan*/  ngx_int_t ;
struct TYPE_19__ {scalar_t__ type; TYPE_11__* log; int /*<<< orphan*/  sent; scalar_t__ buffered; TYPE_2__* read; } ;
typedef  TYPE_6__ ngx_connection_t ;
struct TYPE_15__ {int /*<<< orphan*/  eof; } ;
struct TYPE_13__ {int /*<<< orphan*/ * handler; } ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_DECLINED ; 
 int /*<<< orphan*/  NGX_LOG_INFO ; 
 int NGX_MAX_INT32_VALUE ; 
 int /*<<< orphan*/  NGX_OK ; 
 int /*<<< orphan*/  NGX_STREAM_OK ; 
 scalar_t__ SOCK_DGRAM ; 
 int /*<<< orphan*/  FUNC0 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_11__*,int /*<<< orphan*/ ,char*,...) ; 
 TYPE_5__* FUNC2 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_stream_proxy_module ; 

__attribute__((used)) static ngx_int_t
FUNC4(ngx_stream_session_t *s,
    ngx_uint_t from_upstream)
{
    ngx_connection_t             *c, *pc;
    ngx_log_handler_pt            handler;
    ngx_stream_upstream_t        *u;
    ngx_stream_proxy_srv_conf_t  *pscf;

    pscf = FUNC2(s, ngx_stream_proxy_module);

    c = s->connection;
    u = s->upstream;
    pc = u->connected ? u->peer.connection : NULL;

    if (c->type == SOCK_DGRAM) {

        if (pscf->requests && u->requests < pscf->requests) {
            return NGX_DECLINED;
        }

        if (pscf->requests) {
            FUNC0(c);
        }

        if (pscf->responses == NGX_MAX_INT32_VALUE
            || u->responses < pscf->responses * u->requests)
        {
            return NGX_DECLINED;
        }

        if (pc == NULL || c->buffered || pc->buffered) {
            return NGX_DECLINED;
        }

        handler = c->log->handler;
        c->log->handler = NULL;

        FUNC1(NGX_LOG_INFO, c->log, 0,
                      "udp done"
                      ", packets from/to client:%ui/%ui"
                      ", bytes from/to client:%O/%O"
                      ", bytes from/to upstream:%O/%O",
                      u->requests, u->responses,
                      s->received, c->sent, u->received, pc ? pc->sent : 0);

        c->log->handler = handler;

        FUNC3(s, NGX_STREAM_OK);

        return NGX_OK;
    }

    /* c->type == SOCK_STREAM */

    if (pc == NULL
        || (!c->read->eof && !pc->read->eof)
        || (!c->read->eof && c->buffered)
        || (!pc->read->eof && pc->buffered))
    {
        return NGX_DECLINED;
    }

    handler = c->log->handler;
    c->log->handler = NULL;

    FUNC1(NGX_LOG_INFO, c->log, 0,
                  "%s disconnected"
                  ", bytes from/to client:%O/%O"
                  ", bytes from/to upstream:%O/%O",
                  from_upstream ? "upstream" : "client",
                  s->received, c->sent, u->received, pc ? pc->sent : 0);

    c->log->handler = handler;

    FUNC3(s, NGX_STREAM_OK);

    return NGX_OK;
}
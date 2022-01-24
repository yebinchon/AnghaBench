#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_7__ ;
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;
typedef  struct TYPE_17__   TYPE_13__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ngx_uint_t ;
struct TYPE_18__ {TYPE_7__* connection; } ;
struct TYPE_20__ {int responses; int requests; scalar_t__ connected; int /*<<< orphan*/  received; TYPE_1__ peer; } ;
typedef  TYPE_3__ ngx_stream_upstream_t ;
struct TYPE_21__ {int /*<<< orphan*/  received; TYPE_7__* connection; TYPE_3__* upstream; } ;
typedef  TYPE_4__ ngx_stream_session_t ;
struct TYPE_22__ {int responses; int /*<<< orphan*/  timeout; } ;
typedef  TYPE_5__ ngx_stream_proxy_srv_conf_t ;
typedef  int /*<<< orphan*/ * ngx_log_handler_pt ;
struct TYPE_23__ {int /*<<< orphan*/  write; scalar_t__ delayed; int /*<<< orphan*/  ready; scalar_t__ timedout; TYPE_7__* data; } ;
typedef  TYPE_6__ ngx_event_t ;
struct TYPE_24__ {scalar_t__ type; TYPE_13__* log; TYPE_2__* read; int /*<<< orphan*/  sent; int /*<<< orphan*/  write; scalar_t__ close; TYPE_4__* data; } ;
typedef  TYPE_7__ ngx_connection_t ;
struct TYPE_19__ {int error; int /*<<< orphan*/  delayed; } ;
struct TYPE_17__ {int /*<<< orphan*/ * handler; } ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_ETIMEDOUT ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_STREAM ; 
 int /*<<< orphan*/  NGX_LOG_INFO ; 
 int NGX_MAX_INT32_VALUE ; 
 scalar_t__ NGX_OK ; 
 int /*<<< orphan*/  NGX_STREAM_BAD_GATEWAY ; 
 int /*<<< orphan*/  NGX_STREAM_INTERNAL_SERVER_ERROR ; 
 int /*<<< orphan*/  NGX_STREAM_OK ; 
 scalar_t__ SOCK_DGRAM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_7__*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_13__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_13__*,int /*<<< orphan*/ ,char*,...) ; 
 TYPE_5__* FUNC5 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_stream_proxy_module ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(ngx_event_t *ev, ngx_uint_t from_upstream)
{
    ngx_connection_t             *c, *pc;
    ngx_log_handler_pt            handler;
    ngx_stream_session_t         *s;
    ngx_stream_upstream_t        *u;
    ngx_stream_proxy_srv_conf_t  *pscf;

    c = ev->data;
    s = c->data;
    u = s->upstream;

    if (c->close) {
        FUNC4(NGX_LOG_INFO, c->log, 0, "shutdown timeout");
        FUNC6(s, NGX_STREAM_OK);
        return;
    }

    c = s->connection;
    pc = u->peer.connection;

    pscf = FUNC5(s, ngx_stream_proxy_module);

    if (ev->timedout) {
        ev->timedout = 0;

        if (ev->delayed) {
            ev->delayed = 0;

            if (!ev->ready) {
                if (FUNC2(ev, 0) != NGX_OK) {
                    FUNC6(s,
                                              NGX_STREAM_INTERNAL_SERVER_ERROR);
                    return;
                }

                if (u->connected && !c->read->delayed && !pc->read->delayed) {
                    FUNC0(c->write, pscf->timeout);
                }

                return;
            }

        } else {
            if (s->connection->type == SOCK_DGRAM) {

                if (pscf->responses == NGX_MAX_INT32_VALUE
                    || (u->responses >= pscf->responses * u->requests))
                {

                    /*
                     * successfully terminate timed out UDP session
                     * if expected number of responses was received
                     */

                    handler = c->log->handler;
                    c->log->handler = NULL;

                    FUNC4(NGX_LOG_INFO, c->log, 0,
                                  "udp timed out"
                                  ", packets from/to client:%ui/%ui"
                                  ", bytes from/to client:%O/%O"
                                  ", bytes from/to upstream:%O/%O",
                                  u->requests, u->responses,
                                  s->received, c->sent, u->received,
                                  pc ? pc->sent : 0);

                    c->log->handler = handler;

                    FUNC6(s, NGX_STREAM_OK);
                    return;
                }

                FUNC1(pc, NGX_ETIMEDOUT, "upstream timed out");

                pc->read->error = 1;

                FUNC6(s, NGX_STREAM_BAD_GATEWAY);

                return;
            }

            FUNC1(c, NGX_ETIMEDOUT, "connection timed out");

            FUNC6(s, NGX_STREAM_OK);

            return;
        }

    } else if (ev->delayed) {

        FUNC3(NGX_LOG_DEBUG_STREAM, c->log, 0,
                       "stream connection delayed");

        if (FUNC2(ev, 0) != NGX_OK) {
            FUNC6(s, NGX_STREAM_INTERNAL_SERVER_ERROR);
        }

        return;
    }

    if (from_upstream && !u->connected) {
        return;
    }

    FUNC7(s, from_upstream, ev->write);
}
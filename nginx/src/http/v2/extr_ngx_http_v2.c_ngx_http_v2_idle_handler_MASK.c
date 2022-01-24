#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_8__ ;
typedef  struct TYPE_24__   TYPE_7__ ;
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;
typedef  struct TYPE_17__   TYPE_10__ ;

/* Type definitions */
struct TYPE_22__ {int max_requests; int /*<<< orphan*/  pool_size; } ;
typedef  TYPE_5__ ngx_http_v2_srv_conf_t ;
struct TYPE_23__ {int /*<<< orphan*/ * pool; TYPE_3__* connection; int /*<<< orphan*/  idle; TYPE_2__* http_connection; } ;
typedef  TYPE_6__ ngx_http_v2_connection_t ;
struct TYPE_24__ {int /*<<< orphan*/  (* handler ) (TYPE_7__*) ;int /*<<< orphan*/  kq_errno; scalar_t__ pending_eof; scalar_t__ timedout; TYPE_8__* data; } ;
typedef  TYPE_7__ ngx_event_t ;
struct TYPE_25__ {TYPE_4__* write; scalar_t__ destroyed; TYPE_1__* ssl; int /*<<< orphan*/  addr_text; TYPE_10__* log; scalar_t__ close; TYPE_6__* data; } ;
typedef  TYPE_8__ ngx_connection_t ;
struct TYPE_21__ {int /*<<< orphan*/  handler; } ;
struct TYPE_20__ {int /*<<< orphan*/  log; } ;
struct TYPE_19__ {int /*<<< orphan*/  conf_ctx; } ;
struct TYPE_18__ {int no_send_shutdown; } ;
struct TYPE_17__ {int /*<<< orphan*/ * handler; } ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_HTTP_V2_INTERNAL_ERROR ; 
 int /*<<< orphan*/  NGX_HTTP_V2_NO_ERROR ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 int /*<<< orphan*/  NGX_LOG_INFO ; 
 int NGX_USE_KQUEUE_EVENT ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int ngx_event_flags ; 
 int /*<<< orphan*/  FUNC1 (TYPE_8__*) ; 
 TYPE_5__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_http_v2_module ; 
 int /*<<< orphan*/  FUNC4 (TYPE_7__*) ; 
 int /*<<< orphan*/  ngx_http_v2_write_handler ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_10__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_10__*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_8__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(ngx_event_t *rev)
{
    ngx_connection_t          *c;
    ngx_http_v2_srv_conf_t    *h2scf;
    ngx_http_v2_connection_t  *h2c;

    c = rev->data;
    h2c = c->data;

    FUNC5(NGX_LOG_DEBUG_HTTP, c->log, 0, "http2 idle handler");

    if (rev->timedout || c->close) {
        FUNC3(h2c, NGX_HTTP_V2_NO_ERROR);
        return;
    }

#if (NGX_HAVE_KQUEUE)

    if (ngx_event_flags & NGX_USE_KQUEUE_EVENT) {
        if (rev->pending_eof) {
            c->log->handler = NULL;
            ngx_log_error(NGX_LOG_INFO, c->log, rev->kq_errno,
                          "kevent() reported that client %V closed "
                          "idle connection", &c->addr_text);
#if (NGX_HTTP_SSL)
            if (c->ssl) {
                c->ssl->no_send_shutdown = 1;
            }
#endif
            ngx_http_close_connection(c);
            return;
        }
    }

#endif

    h2scf = FUNC2(h2c->http_connection->conf_ctx,
                                         ngx_http_v2_module);

    if (h2c->idle++ > 10 * h2scf->max_requests) {
        FUNC6(NGX_LOG_INFO, h2c->connection->log, 0,
                      "http2 flood detected");
        FUNC3(h2c, NGX_HTTP_V2_NO_ERROR);
        return;
    }

    c->destroyed = 0;
    FUNC7(c, 0);

    h2c->pool = FUNC0(h2scf->pool_size, h2c->connection->log);
    if (h2c->pool == NULL) {
        FUNC3(h2c, NGX_HTTP_V2_INTERNAL_ERROR);
        return;
    }

    c->write->handler = ngx_http_v2_write_handler;

    rev->handler = ngx_http_v2_read_handler;
    FUNC4(rev);
}
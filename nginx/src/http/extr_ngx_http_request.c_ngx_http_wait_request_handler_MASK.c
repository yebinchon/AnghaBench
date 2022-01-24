#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_6__ ;
typedef  struct TYPE_27__   TYPE_5__ ;
typedef  struct TYPE_26__   TYPE_4__ ;
typedef  struct TYPE_25__   TYPE_3__ ;
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;
typedef  struct TYPE_22__   TYPE_11__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
typedef  scalar_t__ ssize_t ;
struct TYPE_24__ {size_t client_header_buffer_size; } ;
typedef  TYPE_2__ ngx_http_core_srv_conf_t ;
struct TYPE_25__ {scalar_t__ proxy_protocol; int /*<<< orphan*/  conf_ctx; } ;
typedef  TYPE_3__ ngx_http_connection_t ;
struct TYPE_26__ {int /*<<< orphan*/  (* handler ) (TYPE_4__*) ;int /*<<< orphan*/  timer_set; scalar_t__ timedout; TYPE_5__* data; } ;
typedef  TYPE_4__ ngx_event_t ;
struct TYPE_27__ {scalar_t__ (* recv ) (TYPE_5__*,int /*<<< orphan*/ *,size_t) ;TYPE_3__* data; TYPE_11__* log; int /*<<< orphan*/  pool; TYPE_1__* listening; TYPE_6__* buffer; scalar_t__ close; } ;
typedef  TYPE_5__ ngx_connection_t ;
struct TYPE_28__ {int /*<<< orphan*/ * start; int /*<<< orphan*/ * last; int /*<<< orphan*/ * pos; int /*<<< orphan*/ * end; } ;
typedef  TYPE_6__ ngx_buf_t ;
struct TYPE_23__ {int /*<<< orphan*/  post_accept_timeout; } ;
struct TYPE_22__ {char* action; } ;

/* Variables and functions */
 scalar_t__ NGX_AGAIN ; 
 scalar_t__ NGX_ERROR ; 
 int /*<<< orphan*/  NGX_ETIMEDOUT ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 int /*<<< orphan*/  NGX_LOG_INFO ; 
 scalar_t__ NGX_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 TYPE_6__* FUNC1 (int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ FUNC2 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*) ; 
 int /*<<< orphan*/  ngx_http_core_module ; 
 TYPE_3__* FUNC4 (TYPE_5__*) ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_11__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,TYPE_11__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ngx_posted_events ; 
 int /*<<< orphan*/ * FUNC12 (TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_5__*,int) ; 
 scalar_t__ FUNC14 (TYPE_5__*,int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static void
FUNC15(ngx_event_t *rev)
{
    u_char                    *p;
    size_t                     size;
    ssize_t                    n;
    ngx_buf_t                 *b;
    ngx_connection_t          *c;
    ngx_http_connection_t     *hc;
    ngx_http_core_srv_conf_t  *cscf;

    c = rev->data;

    FUNC7(NGX_LOG_DEBUG_HTTP, c->log, 0, "http wait request handler");

    if (rev->timedout) {
        FUNC8(NGX_LOG_INFO, c->log, NGX_ETIMEDOUT, "client timed out");
        FUNC3(c);
        return;
    }

    if (c->close) {
        FUNC3(c);
        return;
    }

    hc = c->data;
    cscf = FUNC5(hc->conf_ctx, ngx_http_core_module);

    size = cscf->client_header_buffer_size;

    b = c->buffer;

    if (b == NULL) {
        b = FUNC1(c->pool, size);
        if (b == NULL) {
            FUNC3(c);
            return;
        }

        c->buffer = b;

    } else if (b->start == NULL) {

        b->start = FUNC9(c->pool, size);
        if (b->start == NULL) {
            FUNC3(c);
            return;
        }

        b->pos = b->start;
        b->last = b->start;
        b->end = b->last + size;
    }

    n = c->recv(c, b->last, size);

    if (n == NGX_AGAIN) {

        if (!rev->timer_set) {
            FUNC0(rev, c->listening->post_accept_timeout);
            FUNC13(c, 1);
        }

        if (FUNC2(rev, 0) != NGX_OK) {
            FUNC3(c);
            return;
        }

        /*
         * We are trying to not hold c->buffer's memory for an idle connection.
         */

        if (FUNC10(c->pool, b->start) == NGX_OK) {
            b->start = NULL;
        }

        return;
    }

    if (n == NGX_ERROR) {
        FUNC3(c);
        return;
    }

    if (n == 0) {
        FUNC8(NGX_LOG_INFO, c->log, 0,
                      "client closed connection");
        FUNC3(c);
        return;
    }

    b->last += n;

    if (hc->proxy_protocol) {
        hc->proxy_protocol = 0;

        p = FUNC12(c, b->pos, b->last);

        if (p == NULL) {
            FUNC3(c);
            return;
        }

        b->pos = p;

        if (b->pos == b->last) {
            c->log->action = "waiting for request";
            b->pos = b->start;
            b->last = b->start;
            FUNC11(rev, &ngx_posted_events);
            return;
        }
    }

    c->log->action = "reading client request line";

    FUNC13(c, 0);

    c->data = FUNC4(c);
    if (c->data == NULL) {
        FUNC3(c);
        return;
    }

    rev->handler = ngx_http_process_request_line;
    FUNC6(rev);
}
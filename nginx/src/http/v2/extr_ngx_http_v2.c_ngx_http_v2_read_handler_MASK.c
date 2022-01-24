#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_6__ ;
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
typedef  scalar_t__ ssize_t ;
struct TYPE_19__ {int recv_buffer_size; int /*<<< orphan*/ * recv_buffer; } ;
typedef  TYPE_3__ ngx_http_v2_main_conf_t ;
struct TYPE_18__ {int buffer_used; int /*<<< orphan*/ * (* handler ) (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;scalar_t__ incomplete; int /*<<< orphan*/  buffer; } ;
struct TYPE_20__ {int blocked; int goaway; int total_bytes; int payload_bytes; scalar_t__ pushing; scalar_t__ processing; scalar_t__ last_out; TYPE_2__ state; TYPE_1__* http_connection; } ;
typedef  TYPE_4__ ngx_http_v2_connection_t ;
struct TYPE_21__ {scalar_t__ timer_set; scalar_t__ ready; scalar_t__ timedout; TYPE_6__* data; } ;
typedef  TYPE_5__ ngx_event_t ;
struct TYPE_22__ {int error; scalar_t__ (* recv ) (TYPE_6__*,int /*<<< orphan*/ *,size_t) ;int /*<<< orphan*/  log; scalar_t__ close; TYPE_4__* data; } ;
typedef  TYPE_6__ ngx_connection_t ;
struct TYPE_17__ {int /*<<< orphan*/  conf_ctx; } ;

/* Variables and functions */
 scalar_t__ NGX_AGAIN ; 
 scalar_t__ NGX_ERROR ; 
 int /*<<< orphan*/  NGX_ETIMEDOUT ; 
 int /*<<< orphan*/  NGX_HTTP_V2_INTERNAL_ERROR ; 
 int /*<<< orphan*/  NGX_HTTP_V2_NO_ERROR ; 
 int /*<<< orphan*/  NGX_HTTP_V2_PROTOCOL_ERROR ; 
 int NGX_HTTP_V2_STATE_BUFFER_SIZE ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 int /*<<< orphan*/  NGX_LOG_INFO ; 
 scalar_t__ NGX_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*) ; 
 scalar_t__ FUNC1 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  ngx_http_v2_module ; 
 scalar_t__ FUNC5 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC10 (TYPE_6__*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/ * FUNC11 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC12(ngx_event_t *rev)
{
    u_char                    *p, *end;
    size_t                     available;
    ssize_t                    n;
    ngx_connection_t          *c;
    ngx_http_v2_main_conf_t   *h2mcf;
    ngx_http_v2_connection_t  *h2c;

    c = rev->data;
    h2c = c->data;

    if (rev->timedout) {
        FUNC8(NGX_LOG_INFO, c->log, NGX_ETIMEDOUT, "client timed out");
        FUNC3(h2c, NGX_HTTP_V2_PROTOCOL_ERROR);
        return;
    }

    FUNC7(NGX_LOG_DEBUG_HTTP, c->log, 0, "http2 read handler");

    h2c->blocked = 1;

    if (c->close) {
        c->close = 0;

        if (c->error) {
            FUNC3(h2c, 0);
            return;
        }

        if (!h2c->goaway) {
            h2c->goaway = 1;

            if (FUNC5(h2c, NGX_HTTP_V2_NO_ERROR)
                == NGX_ERROR)
            {
                FUNC3(h2c, 0);
                return;
            }

            if (FUNC6(h2c) == NGX_ERROR) {
                FUNC3(h2c, 0);
                return;
            }
        }

        h2c->blocked = 0;

        return;
    }

    h2mcf = FUNC2(h2c->http_connection->conf_ctx,
                                          ngx_http_v2_module);

    available = h2mcf->recv_buffer_size - 2 * NGX_HTTP_V2_STATE_BUFFER_SIZE;

    do {
        p = h2mcf->recv_buffer;

        FUNC9(p, h2c->state.buffer, NGX_HTTP_V2_STATE_BUFFER_SIZE);
        end = p + h2c->state.buffer_used;

        n = c->recv(c, end, available);

        if (n == NGX_AGAIN) {
            break;
        }

        if (n == 0
            && (h2c->state.incomplete || h2c->processing || h2c->pushing))
        {
            FUNC8(NGX_LOG_INFO, c->log, 0,
                          "client prematurely closed connection");
        }

        if (n == 0 || n == NGX_ERROR) {
            c->error = 1;
            FUNC3(h2c, 0);
            return;
        }

        end += n;

        h2c->state.buffer_used = 0;
        h2c->state.incomplete = 0;

        do {
            p = h2c->state.handler(h2c, p, end);

            if (p == NULL) {
                return;
            }

        } while (p != end);

        h2c->total_bytes += n;

        if (h2c->total_bytes / 8 > h2c->payload_bytes + 1048576) {
            FUNC8(NGX_LOG_INFO, c->log, 0, "http2 flood detected");
            FUNC3(h2c, NGX_HTTP_V2_NO_ERROR);
            return;
        }

    } while (rev->ready);

    if (FUNC1(rev, 0) != NGX_OK) {
        FUNC3(h2c, NGX_HTTP_V2_INTERNAL_ERROR);
        return;
    }

    if (h2c->last_out && FUNC6(h2c) == NGX_ERROR) {
        FUNC3(h2c, 0);
        return;
    }

    h2c->blocked = 0;

    if (h2c->processing || h2c->pushing) {
        if (rev->timer_set) {
            FUNC0(rev);
        }

        return;
    }

    FUNC4(h2c);
}
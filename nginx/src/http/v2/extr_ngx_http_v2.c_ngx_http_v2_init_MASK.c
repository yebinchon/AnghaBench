#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_31__   TYPE_9__ ;
typedef  struct TYPE_30__   TYPE_8__ ;
typedef  struct TYPE_29__   TYPE_6__ ;
typedef  struct TYPE_28__   TYPE_5__ ;
typedef  struct TYPE_27__   TYPE_4__ ;
typedef  struct TYPE_26__   TYPE_3__ ;
typedef  struct TYPE_25__   TYPE_2__ ;
typedef  struct TYPE_24__   TYPE_20__ ;
typedef  struct TYPE_23__   TYPE_1__ ;
typedef  struct TYPE_22__   TYPE_11__ ;

/* Type definitions */
struct TYPE_26__ {TYPE_6__* data; int /*<<< orphan*/  handler; } ;
typedef  TYPE_3__ ngx_pool_cleanup_t ;
struct TYPE_27__ {int /*<<< orphan*/  pool_size; int /*<<< orphan*/  concurrent_streams; int /*<<< orphan*/  concurrent_pushes; } ;
typedef  TYPE_4__ ngx_http_v2_srv_conf_t ;
typedef  int /*<<< orphan*/  ngx_http_v2_node_t ;
struct TYPE_28__ {int /*<<< orphan*/ * recv_buffer; int /*<<< orphan*/  recv_buffer_size; } ;
typedef  TYPE_5__ ngx_http_v2_main_conf_t ;
struct TYPE_23__ {int /*<<< orphan*/  handler; } ;
struct TYPE_29__ {int /*<<< orphan*/  closed; int /*<<< orphan*/  dependencies; int /*<<< orphan*/  waiting; scalar_t__ proxy_protocol; TYPE_1__ state; int /*<<< orphan*/ * streams_index; int /*<<< orphan*/ * pool; TYPE_9__* connection; int /*<<< orphan*/  priority_limit; int /*<<< orphan*/  concurrent_pushes; int /*<<< orphan*/  conf_ctx; int /*<<< orphan*/  frame_size; void* init_window; void* recv_window; void* send_window; struct TYPE_29__* http_connection; } ;
typedef  TYPE_6__ ngx_http_v2_connection_t ;
typedef  TYPE_6__ ngx_http_connection_t ;
struct TYPE_30__ {int /*<<< orphan*/  (* handler ) (TYPE_8__*) ;TYPE_9__* data; } ;
typedef  TYPE_8__ ngx_event_t ;
struct TYPE_31__ {int idle; TYPE_2__* write; TYPE_6__* data; int /*<<< orphan*/  pool; TYPE_11__* log; } ;
typedef  TYPE_9__ ngx_connection_t ;
struct TYPE_25__ {int /*<<< orphan*/  handler; } ;
struct TYPE_24__ {int /*<<< orphan*/  pool; } ;
struct TYPE_22__ {char* action; } ;

/* Variables and functions */
 scalar_t__ NGX_ERROR ; 
 int /*<<< orphan*/  NGX_HTTP_V2_DEFAULT_FRAME_SIZE ; 
 void* NGX_HTTP_V2_DEFAULT_WINDOW ; 
 void* NGX_HTTP_V2_MAX_WINDOW ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,TYPE_11__*) ; 
 TYPE_20__* ngx_cycle ; 
 int /*<<< orphan*/  FUNC1 (TYPE_9__*) ; 
 TYPE_5__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  ngx_http_v2_module ; 
 int /*<<< orphan*/  ngx_http_v2_pool_cleanup ; 
 int /*<<< orphan*/  FUNC5 (TYPE_8__*) ; 
 scalar_t__ FUNC6 (TYPE_6__*) ; 
 scalar_t__ FUNC7 (TYPE_6__*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  ngx_http_v2_state_preface ; 
 int /*<<< orphan*/  ngx_http_v2_state_proxy_protocol ; 
 int /*<<< orphan*/  ngx_http_v2_write_handler ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,TYPE_11__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC10 (int /*<<< orphan*/ ,int) ; 
 TYPE_3__* FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

void
FUNC13(ngx_event_t *rev)
{
    ngx_connection_t          *c;
    ngx_pool_cleanup_t        *cln;
    ngx_http_connection_t     *hc;
    ngx_http_v2_srv_conf_t    *h2scf;
    ngx_http_v2_main_conf_t   *h2mcf;
    ngx_http_v2_connection_t  *h2c;

    c = rev->data;
    hc = c->data;

    FUNC8(NGX_LOG_DEBUG_HTTP, c->log, 0, "init http2 connection");

    c->log->action = "processing HTTP/2 connection";

    h2mcf = FUNC2(hc->conf_ctx, ngx_http_v2_module);

    if (h2mcf->recv_buffer == NULL) {
        h2mcf->recv_buffer = FUNC9(ngx_cycle->pool,
                                        h2mcf->recv_buffer_size);
        if (h2mcf->recv_buffer == NULL) {
            FUNC1(c);
            return;
        }
    }

    h2c = FUNC10(c->pool, sizeof(ngx_http_v2_connection_t));
    if (h2c == NULL) {
        FUNC1(c);
        return;
    }

    h2c->connection = c;
    h2c->http_connection = hc;

    h2c->send_window = NGX_HTTP_V2_DEFAULT_WINDOW;
    h2c->recv_window = NGX_HTTP_V2_MAX_WINDOW;

    h2c->init_window = NGX_HTTP_V2_DEFAULT_WINDOW;

    h2c->frame_size = NGX_HTTP_V2_DEFAULT_FRAME_SIZE;

    h2scf = FUNC3(hc->conf_ctx, ngx_http_v2_module);

    h2c->concurrent_pushes = h2scf->concurrent_pushes;
    h2c->priority_limit = h2scf->concurrent_streams;

    h2c->pool = FUNC0(h2scf->pool_size, h2c->connection->log);
    if (h2c->pool == NULL) {
        FUNC1(c);
        return;
    }

    cln = FUNC11(c->pool, 0);
    if (cln == NULL) {
        FUNC1(c);
        return;
    }

    cln->handler = ngx_http_v2_pool_cleanup;
    cln->data = h2c;

    h2c->streams_index = FUNC10(c->pool, FUNC4(h2scf)
                                              * sizeof(ngx_http_v2_node_t *));
    if (h2c->streams_index == NULL) {
        FUNC1(c);
        return;
    }

    if (FUNC6(h2c) == NGX_ERROR) {
        FUNC1(c);
        return;
    }

    if (FUNC7(h2c, 0, NGX_HTTP_V2_MAX_WINDOW
                                               - NGX_HTTP_V2_DEFAULT_WINDOW)
        == NGX_ERROR)
    {
        FUNC1(c);
        return;
    }

    h2c->state.handler = hc->proxy_protocol ? ngx_http_v2_state_proxy_protocol
                                            : ngx_http_v2_state_preface;

    FUNC12(&h2c->waiting);
    FUNC12(&h2c->dependencies);
    FUNC12(&h2c->closed);

    c->data = h2c;

    rev->handler = ngx_http_v2_read_handler;
    c->write->handler = ngx_http_v2_write_handler;

    c->idle = 1;

    FUNC5(rev);
}
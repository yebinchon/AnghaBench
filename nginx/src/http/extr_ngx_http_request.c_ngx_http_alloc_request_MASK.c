#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_9__ ;
typedef  struct TYPE_27__   TYPE_8__ ;
typedef  struct TYPE_26__   TYPE_7__ ;
typedef  struct TYPE_25__   TYPE_6__ ;
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;
typedef  struct TYPE_19__   TYPE_13__ ;
typedef  struct TYPE_18__   TYPE_10__ ;

/* Type definitions */
struct TYPE_24__ {int /*<<< orphan*/  msec; int /*<<< orphan*/  sec; } ;
typedef  TYPE_5__ ngx_time_t ;
typedef  int /*<<< orphan*/  ngx_table_elt_t ;
typedef  int /*<<< orphan*/  ngx_pool_t ;
typedef  int /*<<< orphan*/  ngx_http_variable_value_t ;
struct TYPE_23__ {int content_length_n; int last_modified_time; int /*<<< orphan*/  trailers; int /*<<< orphan*/  headers; } ;
struct TYPE_22__ {int content_length_n; int keep_alive_n; } ;
struct TYPE_25__ {int main_filter_need_in_memory; int count; int /*<<< orphan*/  log_handler; int /*<<< orphan*/  http_state; scalar_t__ subrequests; scalar_t__ uri_changes; TYPE_4__ headers_out; TYPE_3__ headers_in; int /*<<< orphan*/  http_version; int /*<<< orphan*/  method; int /*<<< orphan*/  start_msec; int /*<<< orphan*/  start_sec; struct TYPE_25__* main; int /*<<< orphan*/ * pool; int /*<<< orphan*/ * variables; int /*<<< orphan*/ * ctx; int /*<<< orphan*/  header_in; int /*<<< orphan*/  read_event_handler; int /*<<< orphan*/  loc_conf; int /*<<< orphan*/  srv_conf; int /*<<< orphan*/  main_conf; TYPE_10__* connection; int /*<<< orphan*/  signature; TYPE_9__* http_connection; } ;
typedef  TYPE_6__ ngx_http_request_t ;
struct TYPE_26__ {int /*<<< orphan*/  request_pool_size; } ;
typedef  TYPE_7__ ngx_http_core_srv_conf_t ;
struct TYPE_21__ {int nelts; } ;
struct TYPE_27__ {TYPE_2__ variables; } ;
typedef  TYPE_8__ ngx_http_core_main_conf_t ;
struct TYPE_28__ {TYPE_1__* busy; TYPE_13__* conf_ctx; } ;
typedef  TYPE_9__ ngx_http_connection_t ;
struct TYPE_18__ {scalar_t__ ssl; int /*<<< orphan*/  buffer; int /*<<< orphan*/  log; TYPE_9__* data; } ;
typedef  TYPE_10__ ngx_connection_t ;
struct TYPE_20__ {int /*<<< orphan*/  buf; } ;
struct TYPE_19__ {int /*<<< orphan*/  loc_conf; int /*<<< orphan*/  srv_conf; int /*<<< orphan*/  main_conf; } ;

/* Variables and functions */
 scalar_t__ NGX_HTTP_MAX_SUBREQUESTS ; 
 scalar_t__ NGX_HTTP_MAX_URI_CHANGES ; 
 int /*<<< orphan*/  NGX_HTTP_MODULE ; 
 int /*<<< orphan*/  NGX_HTTP_READING_REQUEST_STATE ; 
 int /*<<< orphan*/  NGX_HTTP_UNKNOWN ; 
 int /*<<< orphan*/  NGX_HTTP_VERSION_10 ; 
 scalar_t__ NGX_OK ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ngx_http_block_reading ; 
 int /*<<< orphan*/  ngx_http_core_module ; 
 TYPE_8__* FUNC2 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 TYPE_7__* FUNC3 (TYPE_13__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_http_log_error_handler ; 
 int ngx_http_max_module ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 
 void* FUNC5 (int /*<<< orphan*/ *,int) ; 
 TYPE_5__* FUNC6 () ; 

__attribute__((used)) static ngx_http_request_t *
FUNC7(ngx_connection_t *c)
{
    ngx_pool_t                 *pool;
    ngx_time_t                 *tp;
    ngx_http_request_t         *r;
    ngx_http_connection_t      *hc;
    ngx_http_core_srv_conf_t   *cscf;
    ngx_http_core_main_conf_t  *cmcf;

    hc = c->data;

    cscf = FUNC3(hc->conf_ctx, ngx_http_core_module);

    pool = FUNC0(cscf->request_pool_size, c->log);
    if (pool == NULL) {
        return NULL;
    }

    r = FUNC5(pool, sizeof(ngx_http_request_t));
    if (r == NULL) {
        FUNC1(pool);
        return NULL;
    }

    r->pool = pool;

    r->http_connection = hc;
    r->signature = NGX_HTTP_MODULE;
    r->connection = c;

    r->main_conf = hc->conf_ctx->main_conf;
    r->srv_conf = hc->conf_ctx->srv_conf;
    r->loc_conf = hc->conf_ctx->loc_conf;

    r->read_event_handler = ngx_http_block_reading;

    r->header_in = hc->busy ? hc->busy->buf : c->buffer;

    if (FUNC4(&r->headers_out.headers, r->pool, 20,
                      sizeof(ngx_table_elt_t))
        != NGX_OK)
    {
        FUNC1(r->pool);
        return NULL;
    }

    if (FUNC4(&r->headers_out.trailers, r->pool, 4,
                      sizeof(ngx_table_elt_t))
        != NGX_OK)
    {
        FUNC1(r->pool);
        return NULL;
    }

    r->ctx = FUNC5(r->pool, sizeof(void *) * ngx_http_max_module);
    if (r->ctx == NULL) {
        FUNC1(r->pool);
        return NULL;
    }

    cmcf = FUNC2(r, ngx_http_core_module);

    r->variables = FUNC5(r->pool, cmcf->variables.nelts
                                        * sizeof(ngx_http_variable_value_t));
    if (r->variables == NULL) {
        FUNC1(r->pool);
        return NULL;
    }

#if (NGX_HTTP_SSL)
    if (c->ssl) {
        r->main_filter_need_in_memory = 1;
    }
#endif

    r->main = r;
    r->count = 1;

    tp = FUNC6();
    r->start_sec = tp->sec;
    r->start_msec = tp->msec;

    r->method = NGX_HTTP_UNKNOWN;
    r->http_version = NGX_HTTP_VERSION_10;

    r->headers_in.content_length_n = -1;
    r->headers_in.keep_alive_n = -1;
    r->headers_out.content_length_n = -1;
    r->headers_out.last_modified_time = -1;

    r->uri_changes = NGX_HTTP_MAX_URI_CHANGES + 1;
    r->subrequests = NGX_HTTP_MAX_SUBREQUESTS + 1;

    r->http_state = NGX_HTTP_READING_REQUEST_STATE;

    r->log_handler = ngx_http_log_error_handler;

    return r;
}

typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_6__ ;
typedef struct TYPE_27__ TYPE_5__ ;
typedef struct TYPE_26__ TYPE_4__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;
typedef struct TYPE_22__ TYPE_11__ ;


typedef int u_char ;
typedef scalar_t__ ssize_t ;
struct TYPE_24__ {size_t client_header_buffer_size; } ;
typedef TYPE_2__ ngx_http_core_srv_conf_t ;
struct TYPE_25__ {scalar_t__ proxy_protocol; int conf_ctx; } ;
typedef TYPE_3__ ngx_http_connection_t ;
struct TYPE_26__ {int (* handler ) (TYPE_4__*) ;int timer_set; scalar_t__ timedout; TYPE_5__* data; } ;
typedef TYPE_4__ ngx_event_t ;
struct TYPE_27__ {scalar_t__ (* recv ) (TYPE_5__*,int *,size_t) ;TYPE_3__* data; TYPE_11__* log; int pool; TYPE_1__* listening; TYPE_6__* buffer; scalar_t__ close; } ;
typedef TYPE_5__ ngx_connection_t ;
struct TYPE_28__ {int * start; int * last; int * pos; int * end; } ;
typedef TYPE_6__ ngx_buf_t ;
struct TYPE_23__ {int post_accept_timeout; } ;
struct TYPE_22__ {char* action; } ;


 scalar_t__ NGX_AGAIN ;
 scalar_t__ NGX_ERROR ;
 int NGX_ETIMEDOUT ;
 int NGX_LOG_DEBUG_HTTP ;
 int NGX_LOG_INFO ;
 scalar_t__ NGX_OK ;
 int ngx_add_timer (TYPE_4__*,int ) ;
 TYPE_6__* ngx_create_temp_buf (int ,size_t) ;
 scalar_t__ ngx_handle_read_event (TYPE_4__*,int ) ;
 int ngx_http_close_connection (TYPE_5__*) ;
 int ngx_http_core_module ;
 TYPE_3__* ngx_http_create_request (TYPE_5__*) ;
 TYPE_2__* ngx_http_get_module_srv_conf (int ,int ) ;
 int ngx_http_process_request_line (TYPE_4__*) ;
 int ngx_log_debug0 (int ,TYPE_11__*,int ,char*) ;
 int ngx_log_error (int ,TYPE_11__*,int ,char*) ;
 int * ngx_palloc (int ,size_t) ;
 scalar_t__ ngx_pfree (int ,int *) ;
 int ngx_post_event (TYPE_4__*,int *) ;
 int ngx_posted_events ;
 int * ngx_proxy_protocol_read (TYPE_5__*,int *,int *) ;
 int ngx_reusable_connection (TYPE_5__*,int) ;
 scalar_t__ stub1 (TYPE_5__*,int *,size_t) ;

__attribute__((used)) static void
ngx_http_wait_request_handler(ngx_event_t *rev)
{
    u_char *p;
    size_t size;
    ssize_t n;
    ngx_buf_t *b;
    ngx_connection_t *c;
    ngx_http_connection_t *hc;
    ngx_http_core_srv_conf_t *cscf;

    c = rev->data;

    ngx_log_debug0(NGX_LOG_DEBUG_HTTP, c->log, 0, "http wait request handler");

    if (rev->timedout) {
        ngx_log_error(NGX_LOG_INFO, c->log, NGX_ETIMEDOUT, "client timed out");
        ngx_http_close_connection(c);
        return;
    }

    if (c->close) {
        ngx_http_close_connection(c);
        return;
    }

    hc = c->data;
    cscf = ngx_http_get_module_srv_conf(hc->conf_ctx, ngx_http_core_module);

    size = cscf->client_header_buffer_size;

    b = c->buffer;

    if (b == ((void*)0)) {
        b = ngx_create_temp_buf(c->pool, size);
        if (b == ((void*)0)) {
            ngx_http_close_connection(c);
            return;
        }

        c->buffer = b;

    } else if (b->start == ((void*)0)) {

        b->start = ngx_palloc(c->pool, size);
        if (b->start == ((void*)0)) {
            ngx_http_close_connection(c);
            return;
        }

        b->pos = b->start;
        b->last = b->start;
        b->end = b->last + size;
    }

    n = c->recv(c, b->last, size);

    if (n == NGX_AGAIN) {

        if (!rev->timer_set) {
            ngx_add_timer(rev, c->listening->post_accept_timeout);
            ngx_reusable_connection(c, 1);
        }

        if (ngx_handle_read_event(rev, 0) != NGX_OK) {
            ngx_http_close_connection(c);
            return;
        }





        if (ngx_pfree(c->pool, b->start) == NGX_OK) {
            b->start = ((void*)0);
        }

        return;
    }

    if (n == NGX_ERROR) {
        ngx_http_close_connection(c);
        return;
    }

    if (n == 0) {
        ngx_log_error(NGX_LOG_INFO, c->log, 0,
                      "client closed connection");
        ngx_http_close_connection(c);
        return;
    }

    b->last += n;

    if (hc->proxy_protocol) {
        hc->proxy_protocol = 0;

        p = ngx_proxy_protocol_read(c, b->pos, b->last);

        if (p == ((void*)0)) {
            ngx_http_close_connection(c);
            return;
        }

        b->pos = p;

        if (b->pos == b->last) {
            c->log->action = "waiting for request";
            b->pos = b->start;
            b->last = b->start;
            ngx_post_event(rev, &ngx_posted_events);
            return;
        }
    }

    c->log->action = "reading client request line";

    ngx_reusable_connection(c, 0);

    c->data = ngx_http_create_request(c);
    if (c->data == ((void*)0)) {
        ngx_http_close_connection(c);
        return;
    }

    rev->handler = ngx_http_process_request_line;
    ngx_http_process_request_line(rev);
}

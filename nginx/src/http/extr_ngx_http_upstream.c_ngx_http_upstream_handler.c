
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int (* read_event_handler ) (TYPE_2__*,TYPE_1__*) ;int (* write_event_handler ) (TYPE_2__*,TYPE_1__*) ;} ;
typedef TYPE_1__ ngx_http_upstream_t ;
struct TYPE_13__ {int args; int uri; TYPE_4__* connection; TYPE_1__* upstream; } ;
typedef TYPE_2__ ngx_http_request_t ;
struct TYPE_14__ {scalar_t__ write; scalar_t__ timedout; scalar_t__ delayed; TYPE_4__* data; } ;
typedef TYPE_3__ ngx_event_t ;
struct TYPE_15__ {int log; TYPE_2__* data; } ;
typedef TYPE_4__ ngx_connection_t ;


 int NGX_LOG_DEBUG_HTTP ;
 int ngx_http_run_posted_requests (TYPE_4__*) ;
 int ngx_http_set_log_request (int ,TYPE_2__*) ;
 int ngx_log_debug2 (int ,int ,int ,char*,int *,int *) ;
 int stub1 (TYPE_2__*,TYPE_1__*) ;
 int stub2 (TYPE_2__*,TYPE_1__*) ;

__attribute__((used)) static void
ngx_http_upstream_handler(ngx_event_t *ev)
{
    ngx_connection_t *c;
    ngx_http_request_t *r;
    ngx_http_upstream_t *u;

    c = ev->data;
    r = c->data;

    u = r->upstream;
    c = r->connection;

    ngx_http_set_log_request(c->log, r);

    ngx_log_debug2(NGX_LOG_DEBUG_HTTP, c->log, 0,
                   "http upstream request: \"%V?%V\"", &r->uri, &r->args);

    if (ev->delayed && ev->timedout) {
        ev->delayed = 0;
        ev->timedout = 0;
    }

    if (ev->write) {
        u->write_event_handler(r, u);

    } else {
        u->read_event_handler(r, u);
    }

    ngx_http_run_posted_requests(c);
}

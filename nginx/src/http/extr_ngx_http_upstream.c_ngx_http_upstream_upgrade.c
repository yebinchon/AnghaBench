
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_9__ ;
typedef struct TYPE_24__ TYPE_8__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


struct TYPE_19__ {scalar_t__ pos; scalar_t__ last; } ;
struct TYPE_18__ {TYPE_6__* connection; } ;
struct TYPE_20__ {TYPE_2__ buffer; TYPE_1__ peer; int write_event_handler; int read_event_handler; } ;
typedef TYPE_3__ ngx_http_upstream_t ;
struct TYPE_21__ {int write_event_handler; int read_event_handler; scalar_t__ keepalive; struct TYPE_21__* main; TYPE_6__* connection; } ;
typedef TYPE_4__ ngx_http_request_t ;
struct TYPE_22__ {scalar_t__ tcp_nodelay; } ;
typedef TYPE_5__ ngx_http_core_loc_conf_t ;
struct TYPE_23__ {TYPE_8__* read; TYPE_9__* log; } ;
typedef TYPE_6__ ngx_connection_t ;
struct TYPE_25__ {char* action; } ;
struct TYPE_24__ {scalar_t__ ready; } ;


 scalar_t__ NGX_ERROR ;
 int NGX_HTTP_FLUSH ;
 int NGX_LOG_ERR ;
 scalar_t__ NGX_OK ;
 int ngx_http_core_module ;
 TYPE_5__* ngx_http_get_module_loc_conf (TYPE_4__*,int ) ;
 scalar_t__ ngx_http_send_special (TYPE_4__*,int ) ;
 int ngx_http_upstream_finalize_request (TYPE_4__*,TYPE_3__*,scalar_t__) ;
 int ngx_http_upstream_process_upgraded (TYPE_4__*,int,int) ;
 int ngx_http_upstream_upgraded_read_downstream ;
 int ngx_http_upstream_upgraded_read_upstream ;
 int ngx_http_upstream_upgraded_write_downstream ;
 int ngx_http_upstream_upgraded_write_upstream ;
 int ngx_log_error (int ,TYPE_9__*,int ,char*) ;
 int ngx_post_event (TYPE_8__*,int *) ;
 int ngx_posted_events ;
 scalar_t__ ngx_tcp_nodelay (TYPE_6__*) ;

__attribute__((used)) static void
ngx_http_upstream_upgrade(ngx_http_request_t *r, ngx_http_upstream_t *u)
{
    ngx_connection_t *c;
    ngx_http_core_loc_conf_t *clcf;

    c = r->connection;
    clcf = ngx_http_get_module_loc_conf(r, ngx_http_core_module);



    if (r != r->main) {
        ngx_log_error(NGX_LOG_ERR, c->log, 0,
                      "connection upgrade in subrequest");
        ngx_http_upstream_finalize_request(r, u, NGX_ERROR);
        return;
    }

    r->keepalive = 0;
    c->log->action = "proxying upgraded connection";

    u->read_event_handler = ngx_http_upstream_upgraded_read_upstream;
    u->write_event_handler = ngx_http_upstream_upgraded_write_upstream;
    r->read_event_handler = ngx_http_upstream_upgraded_read_downstream;
    r->write_event_handler = ngx_http_upstream_upgraded_write_downstream;

    if (clcf->tcp_nodelay) {

        if (ngx_tcp_nodelay(c) != NGX_OK) {
            ngx_http_upstream_finalize_request(r, u, NGX_ERROR);
            return;
        }

        if (ngx_tcp_nodelay(u->peer.connection) != NGX_OK) {
            ngx_http_upstream_finalize_request(r, u, NGX_ERROR);
            return;
        }
    }

    if (ngx_http_send_special(r, NGX_HTTP_FLUSH) == NGX_ERROR) {
        ngx_http_upstream_finalize_request(r, u, NGX_ERROR);
        return;
    }

    if (u->peer.connection->read->ready
        || u->buffer.pos != u->buffer.last)
    {
        ngx_post_event(c->read, &ngx_posted_events);
        ngx_http_upstream_process_upgraded(r, 1, 1);
        return;
    }

    ngx_http_upstream_process_upgraded(r, 0, 1);
}

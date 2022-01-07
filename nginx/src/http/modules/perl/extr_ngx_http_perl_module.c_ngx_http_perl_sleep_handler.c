
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* connection; } ;
typedef TYPE_2__ ngx_http_request_t ;
struct TYPE_10__ {scalar_t__ delayed; } ;
typedef TYPE_3__ ngx_event_t ;
struct TYPE_8__ {TYPE_3__* write; int log; } ;


 int NGX_HTTP_INTERNAL_SERVER_ERROR ;
 int NGX_LOG_DEBUG_HTTP ;
 scalar_t__ NGX_OK ;
 scalar_t__ ngx_handle_write_event (TYPE_3__*,int ) ;
 int ngx_http_finalize_request (TYPE_2__*,int ) ;
 int ngx_http_perl_handle_request (TYPE_2__*) ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;

void
ngx_http_perl_sleep_handler(ngx_http_request_t *r)
{
    ngx_event_t *wev;

    ngx_log_debug0(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "perl sleep handler");

    wev = r->connection->write;

    if (wev->delayed) {

        if (ngx_handle_write_event(wev, 0) != NGX_OK) {
            ngx_http_finalize_request(r, NGX_HTTP_INTERNAL_SERVER_ERROR);
        }

        return;
    }

    ngx_http_perl_handle_request(r);
}

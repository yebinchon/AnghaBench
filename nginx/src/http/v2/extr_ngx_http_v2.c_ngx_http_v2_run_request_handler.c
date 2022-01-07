
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ngx_http_request_t ;
struct TYPE_4__ {TYPE_2__* data; } ;
typedef TYPE_1__ ngx_event_t ;
struct TYPE_5__ {int log; int * data; } ;
typedef TYPE_2__ ngx_connection_t ;


 int NGX_LOG_DEBUG_HTTP ;
 int ngx_http_v2_run_request (int *) ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;

__attribute__((used)) static void
ngx_http_v2_run_request_handler(ngx_event_t *ev)
{
    ngx_connection_t *fc;
    ngx_http_request_t *r;

    fc = ev->data;
    r = fc->data;

    ngx_log_debug0(NGX_LOG_DEBUG_HTTP, fc->log, 0,
                   "http2 run request handler");

    ngx_http_v2_run_request(r);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int stream; } ;
typedef TYPE_1__ ngx_http_request_t ;
struct TYPE_6__ {scalar_t__ timedout; TYPE_3__* data; } ;
typedef TYPE_2__ ngx_event_t ;
struct TYPE_7__ {int timedout; int log; TYPE_1__* data; } ;
typedef TYPE_3__ ngx_connection_t ;


 int NGX_ETIMEDOUT ;
 int NGX_HTTP_REQUEST_TIME_OUT ;
 int NGX_LOG_DEBUG_HTTP ;
 int NGX_LOG_INFO ;
 int ngx_http_v2_close_stream (int ,int ) ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 int ngx_log_error (int ,int ,int ,char*) ;

__attribute__((used)) static void
ngx_http_v2_close_stream_handler(ngx_event_t *ev)
{
    ngx_connection_t *fc;
    ngx_http_request_t *r;

    fc = ev->data;
    r = fc->data;

    ngx_log_debug0(NGX_LOG_DEBUG_HTTP, fc->log, 0,
                   "http2 close stream handler");

    if (ev->timedout) {
        ngx_log_error(NGX_LOG_INFO, fc->log, NGX_ETIMEDOUT, "client timed out");

        fc->timedout = 1;

        ngx_http_v2_close_stream(r->stream, NGX_HTTP_REQUEST_TIME_OUT);
        return;
    }

    ngx_http_v2_close_stream(r->stream, 0);
}

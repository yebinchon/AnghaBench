
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ngx_stream_session_t ;
struct TYPE_5__ {scalar_t__ timedout; TYPE_2__* data; } ;
typedef TYPE_1__ ngx_event_t ;
struct TYPE_6__ {int log; int write; int * data; } ;
typedef TYPE_2__ ngx_connection_t ;


 int NGX_ETIMEDOUT ;
 int NGX_LOG_DEBUG_STREAM ;
 int NGX_LOG_ERR ;
 scalar_t__ NGX_OK ;
 int ngx_del_timer (int ) ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 int ngx_log_error (int ,int ,int ,char*) ;
 int ngx_stream_proxy_init_upstream (int *) ;
 int ngx_stream_proxy_next_upstream (int *) ;
 scalar_t__ ngx_stream_proxy_test_connect (TYPE_2__*) ;

__attribute__((used)) static void
ngx_stream_proxy_connect_handler(ngx_event_t *ev)
{
    ngx_connection_t *c;
    ngx_stream_session_t *s;

    c = ev->data;
    s = c->data;

    if (ev->timedout) {
        ngx_log_error(NGX_LOG_ERR, c->log, NGX_ETIMEDOUT, "upstream timed out");
        ngx_stream_proxy_next_upstream(s);
        return;
    }

    ngx_del_timer(c->write);

    ngx_log_debug0(NGX_LOG_DEBUG_STREAM, c->log, 0,
                   "stream proxy connect upstream");

    if (ngx_stream_proxy_test_connect(c) != NGX_OK) {
        ngx_stream_proxy_next_upstream(s);
        return;
    }

    ngx_stream_proxy_init_upstream(s);
}

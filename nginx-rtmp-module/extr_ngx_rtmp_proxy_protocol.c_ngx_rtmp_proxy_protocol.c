
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int timeout; TYPE_3__* connection; } ;
typedef TYPE_1__ ngx_rtmp_session_t ;
struct TYPE_12__ {int (* handler ) (TYPE_2__*) ;scalar_t__ ready; } ;
typedef TYPE_2__ ngx_event_t ;
struct TYPE_13__ {int log; TYPE_2__* read; } ;
typedef TYPE_3__ ngx_connection_t ;


 int NGX_LOG_DEBUG_RTMP ;
 scalar_t__ NGX_OK ;
 int ngx_add_timer (TYPE_2__*,int ) ;
 scalar_t__ ngx_handle_read_event (TYPE_2__*,int ) ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 int ngx_post_event (TYPE_2__*,int *) ;
 int ngx_posted_events ;
 int ngx_rtmp_finalize_session (TYPE_1__*) ;
 int ngx_rtmp_proxy_protocol_recv (TYPE_2__*) ;
 scalar_t__ ngx_use_accept_mutex ;
 int stub1 (TYPE_2__*) ;

void
ngx_rtmp_proxy_protocol(ngx_rtmp_session_t *s)
{
    ngx_event_t *rev;
    ngx_connection_t *c;

    c = s->connection;
    rev = c->read;
    rev->handler = ngx_rtmp_proxy_protocol_recv;

    ngx_log_debug0(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
                   "proxy_protocol: start");

    if (rev->ready) {


        if (ngx_use_accept_mutex) {
            ngx_post_event(rev, &ngx_posted_events);
            return;
        }

        rev->handler(rev);
        return;
    }

    ngx_add_timer(rev, s->timeout);

    if (ngx_handle_read_event(rev, 0) != NGX_OK) {
        ngx_rtmp_finalize_session(s);
        return;
    }
}

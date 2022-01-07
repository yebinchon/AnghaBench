
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int log; scalar_t__ timedout; TYPE_3__* data; } ;
typedef TYPE_2__ ngx_event_t ;
struct TYPE_9__ {int timedout; TYPE_1__* ssl; } ;
typedef TYPE_3__ ngx_connection_t ;
typedef int (* ngx_connection_handler_pt ) (TYPE_3__*) ;
struct TYPE_7__ {int (* handler ) (TYPE_3__*) ;} ;


 scalar_t__ NGX_AGAIN ;
 int NGX_LOG_DEBUG_EVENT ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 scalar_t__ ngx_ssl_shutdown (TYPE_3__*) ;

__attribute__((used)) static void
ngx_ssl_shutdown_handler(ngx_event_t *ev)
{
    ngx_connection_t *c;
    ngx_connection_handler_pt handler;

    c = ev->data;
    handler = c->ssl->handler;

    if (ev->timedout) {
        c->timedout = 1;
    }

    ngx_log_debug0(NGX_LOG_DEBUG_EVENT, ev->log, 0, "SSL shutdown handler");

    if (ngx_ssl_shutdown(c) == NGX_AGAIN) {
        return;
    }

    handler(c);
}

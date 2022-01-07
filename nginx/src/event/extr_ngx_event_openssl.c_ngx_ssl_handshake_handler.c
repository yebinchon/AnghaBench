
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ timedout; int write; TYPE_3__* data; } ;
typedef TYPE_2__ ngx_event_t ;
struct TYPE_10__ {TYPE_1__* ssl; int log; } ;
typedef TYPE_3__ ngx_connection_t ;
struct TYPE_8__ {int (* handler ) (TYPE_3__*) ;} ;


 scalar_t__ NGX_AGAIN ;
 int NGX_LOG_DEBUG_EVENT ;
 int ngx_log_debug1 (int ,int ,int ,char*,int ) ;
 scalar_t__ ngx_ssl_handshake (TYPE_3__*) ;
 int stub1 (TYPE_3__*) ;
 int stub2 (TYPE_3__*) ;

__attribute__((used)) static void
ngx_ssl_handshake_handler(ngx_event_t *ev)
{
    ngx_connection_t *c;

    c = ev->data;

    ngx_log_debug1(NGX_LOG_DEBUG_EVENT, c->log, 0,
                   "SSL handshake handler: %d", ev->write);

    if (ev->timedout) {
        c->ssl->handler(c);
        return;
    }

    if (ngx_ssl_handshake(c) == NGX_AGAIN) {
        return;
    }

    c->ssl->handler(c);
}

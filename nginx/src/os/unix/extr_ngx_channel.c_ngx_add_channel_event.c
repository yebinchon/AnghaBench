
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ ngx_int_t ;
typedef int ngx_fd_t ;
struct TYPE_9__ {int channel; int handler; int log; } ;
typedef TYPE_1__ ngx_event_t ;
typedef int ngx_event_handler_pt ;
struct TYPE_10__ {int log; int pool; } ;
typedef TYPE_2__ ngx_cycle_t ;
struct TYPE_11__ {TYPE_1__* write; TYPE_1__* read; int pool; } ;
typedef TYPE_3__ ngx_connection_t ;


 scalar_t__ NGX_ERROR ;
 scalar_t__ NGX_OK ;
 scalar_t__ NGX_READ_EVENT ;
 int NGX_USE_EPOLL_EVENT ;
 scalar_t__ ngx_add_conn (TYPE_3__*) ;
 scalar_t__ ngx_add_event (TYPE_1__*,scalar_t__,int ) ;
 int ngx_event_flags ;
 int ngx_free_connection (TYPE_3__*) ;
 TYPE_3__* ngx_get_connection (int ,int ) ;

ngx_int_t
ngx_add_channel_event(ngx_cycle_t *cycle, ngx_fd_t fd, ngx_int_t event,
    ngx_event_handler_pt handler)
{
    ngx_event_t *ev, *rev, *wev;
    ngx_connection_t *c;

    c = ngx_get_connection(fd, cycle->log);

    if (c == ((void*)0)) {
        return NGX_ERROR;
    }

    c->pool = cycle->pool;

    rev = c->read;
    wev = c->write;

    rev->log = cycle->log;
    wev->log = cycle->log;

    rev->channel = 1;
    wev->channel = 1;

    ev = (event == NGX_READ_EVENT) ? rev : wev;

    ev->handler = handler;

    if (ngx_add_conn && (ngx_event_flags & NGX_USE_EPOLL_EVENT) == 0) {
        if (ngx_add_conn(c) == NGX_ERROR) {
            ngx_free_connection(c);
            return NGX_ERROR;
        }

    } else {
        if (ngx_add_event(ev, event, 0) == NGX_ERROR) {
            ngx_free_connection(c);
            return NGX_ERROR;
        }
    }

    return NGX_OK;
}

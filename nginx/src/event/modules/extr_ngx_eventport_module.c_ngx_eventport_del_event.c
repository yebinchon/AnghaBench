
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ngx_uint_t ;
typedef int ngx_int_t ;
struct TYPE_4__ {uintptr_t instance; scalar_t__ oneshot; scalar_t__ active; int log; TYPE_2__* data; } ;
typedef TYPE_1__ ngx_event_t ;
struct TYPE_5__ {int fd; TYPE_1__* read; TYPE_1__* write; } ;
typedef TYPE_2__ ngx_connection_t ;


 int NGX_CLOSE_EVENT ;
 int NGX_ERROR ;
 int NGX_LOG_ALERT ;
 int NGX_LOG_DEBUG_EVENT ;
 int NGX_OK ;
 int NGX_READ_EVENT ;
 int POLLIN ;
 int POLLOUT ;
 int PORT_SOURCE_FD ;
 int ep ;
 int ngx_errno ;
 int ngx_log_debug1 (int ,int ,int ,char*,int ) ;
 int ngx_log_debug2 (int ,int ,int ,char*,int ,int ) ;
 int ngx_log_error (int ,int ,int ,char*) ;
 int port_associate (int ,int ,int ,int ,void*) ;
 int port_dissociate (int ,int ,int ) ;

__attribute__((used)) static ngx_int_t
ngx_eventport_del_event(ngx_event_t *ev, ngx_int_t event, ngx_uint_t flags)
{
    ngx_event_t *e;
    ngx_connection_t *c;







    if (flags & NGX_CLOSE_EVENT) {
        ev->active = 0;
        ev->oneshot = 0;
        return NGX_OK;
    }

    c = ev->data;

    if (event == NGX_READ_EVENT) {
        e = c->write;
        event = POLLOUT;

    } else {
        e = c->read;
        event = POLLIN;
    }

    if (e->oneshot) {
        ngx_log_debug2(NGX_LOG_DEBUG_EVENT, ev->log, 0,
                       "eventport change event: fd:%d ev:%04Xi", c->fd, event);

        if (port_associate(ep, PORT_SOURCE_FD, c->fd, event,
                           (void *) ((uintptr_t) ev | ev->instance))
            == -1)
        {
            ngx_log_error(NGX_LOG_ALERT, ev->log, ngx_errno,
                          "port_associate() failed");
            return NGX_ERROR;
        }

    } else {
        ngx_log_debug1(NGX_LOG_DEBUG_EVENT, ev->log, 0,
                       "eventport del event: fd:%d", c->fd);

        if (port_dissociate(ep, PORT_SOURCE_FD, c->fd) == -1) {
            ngx_log_error(NGX_LOG_ALERT, ev->log, ngx_errno,
                          "port_dissociate() failed");
            return NGX_ERROR;
        }
    }

    ev->active = 0;
    ev->oneshot = 0;

    return NGX_OK;
}

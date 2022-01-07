
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ngx_uint_t ;
typedef int ngx_int_t ;
struct TYPE_5__ {scalar_t__ active; int log; TYPE_2__* data; } ;
typedef TYPE_1__ ngx_event_t ;
struct TYPE_6__ {TYPE_1__* read; TYPE_1__* write; int fd; } ;
typedef TYPE_2__ ngx_connection_t ;


 int NGX_CLOSE_EVENT ;
 int NGX_ERROR ;
 int NGX_LOG_DEBUG_EVENT ;
 int NGX_OK ;
 int NGX_READ_EVENT ;
 int POLLIN ;
 int POLLOUT ;
 int POLLREMOVE ;
 int ngx_devpoll_set_event (TYPE_1__*,int ,int) ;
 int ngx_log_debug2 (int ,int ,int ,char*,int ,int ) ;

__attribute__((used)) static ngx_int_t
ngx_devpoll_del_event(ngx_event_t *ev, ngx_int_t event, ngx_uint_t flags)
{
    ngx_event_t *e;
    ngx_connection_t *c;

    c = ev->data;





    ngx_log_debug2(NGX_LOG_DEBUG_EVENT, ev->log, 0,
                   "devpoll del event: fd:%d ev:%04Xi", c->fd, event);

    if (ngx_devpoll_set_event(ev, POLLREMOVE, flags) == NGX_ERROR) {
        return NGX_ERROR;
    }

    ev->active = 0;

    if (flags & NGX_CLOSE_EVENT) {
        e = (event == POLLIN) ? c->write : c->read;

        if (e) {
            e->active = 0;
        }

        return NGX_OK;
    }



    if (event == POLLIN) {
        e = c->write;
        event = POLLOUT;

    } else {
        e = c->read;
        event = POLLIN;
    }

    if (e && e->active) {
        return ngx_devpoll_set_event(e, event, 0);
    }

    return NGX_OK;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {int * ptr; } ;
struct epoll_event {int events; TYPE_1__ data; } ;
typedef int ngx_uint_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_6__ {uintptr_t instance; scalar_t__ active; int log; TYPE_3__* data; } ;
typedef TYPE_2__ ngx_event_t ;
struct TYPE_7__ {int fd; TYPE_2__* read; TYPE_2__* write; } ;
typedef TYPE_3__ ngx_connection_t ;


 int EPOLLIN ;
 int EPOLLOUT ;
 int EPOLLRDHUP ;
 int EPOLL_CTL_DEL ;
 int EPOLL_CTL_MOD ;
 int NGX_CLOSE_EVENT ;
 scalar_t__ NGX_ERROR ;
 int NGX_LOG_ALERT ;
 int NGX_LOG_DEBUG_EVENT ;
 scalar_t__ NGX_OK ;
 scalar_t__ NGX_READ_EVENT ;
 int ep ;
 int epoll_ctl (int ,int,int ,struct epoll_event*) ;
 int ngx_errno ;
 int ngx_log_debug3 (int ,int ,int ,char*,int ,int,int) ;
 int ngx_log_error (int ,int ,int ,char*,int,int ) ;

__attribute__((used)) static ngx_int_t
ngx_epoll_del_event(ngx_event_t *ev, ngx_int_t event, ngx_uint_t flags)
{
    int op;
    uint32_t prev;
    ngx_event_t *e;
    ngx_connection_t *c;
    struct epoll_event ee;







    if (flags & NGX_CLOSE_EVENT) {
        ev->active = 0;
        return NGX_OK;
    }

    c = ev->data;

    if (event == NGX_READ_EVENT) {
        e = c->write;
        prev = EPOLLOUT;

    } else {
        e = c->read;
        prev = EPOLLIN|EPOLLRDHUP;
    }

    if (e->active) {
        op = EPOLL_CTL_MOD;
        ee.events = prev | (uint32_t) flags;
        ee.data.ptr = (void *) ((uintptr_t) c | ev->instance);

    } else {
        op = EPOLL_CTL_DEL;
        ee.events = 0;
        ee.data.ptr = ((void*)0);
    }

    ngx_log_debug3(NGX_LOG_DEBUG_EVENT, ev->log, 0,
                   "epoll del event: fd:%d op:%d ev:%08XD",
                   c->fd, op, ee.events);

    if (epoll_ctl(ep, op, c->fd, &ee) == -1) {
        ngx_log_error(NGX_LOG_ALERT, ev->log, ngx_errno,
                      "epoll_ctl(%d, %d) failed", op, c->fd);
        return NGX_ERROR;
    }

    ev->active = 0;

    return NGX_OK;
}

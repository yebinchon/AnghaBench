
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {void* ptr; } ;
struct epoll_event {int events; TYPE_1__ data; } ;
typedef int ngx_uint_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_6__ {int active; uintptr_t instance; int oneshot; int log; TYPE_3__* data; } ;
typedef TYPE_2__ ngx_event_t ;
struct TYPE_7__ {int fd; TYPE_2__* read; TYPE_2__* write; } ;
typedef TYPE_3__ ngx_connection_t ;


 int EPOLLIN ;
 int EPOLLOUT ;
 int EPOLLRDHUP ;
 int EPOLL_CTL_ADD ;
 int EPOLL_CTL_MOD ;
 scalar_t__ NGX_ERROR ;
 int NGX_EXCLUSIVE_EVENT ;
 int NGX_LOG_ALERT ;
 int NGX_LOG_DEBUG_EVENT ;
 scalar_t__ NGX_OK ;
 int NGX_ONESHOT_EVENT ;
 scalar_t__ NGX_READ_EVENT ;
 int ep ;
 int epoll_ctl (int ,int,int ,struct epoll_event*) ;
 int ngx_errno ;
 int ngx_log_debug3 (int ,int ,int ,char*,int ,int,int) ;
 int ngx_log_error (int ,int ,int ,char*,int,int ) ;

__attribute__((used)) static ngx_int_t
ngx_epoll_add_event(ngx_event_t *ev, ngx_int_t event, ngx_uint_t flags)
{
    int op;
    uint32_t events, prev;
    ngx_event_t *e;
    ngx_connection_t *c;
    struct epoll_event ee;

    c = ev->data;

    events = (uint32_t) event;

    if (event == NGX_READ_EVENT) {
        e = c->write;
        prev = EPOLLOUT;




    } else {
        e = c->read;
        prev = EPOLLIN|EPOLLRDHUP;



    }

    if (e->active) {
        op = EPOLL_CTL_MOD;
        events |= prev;

    } else {
        op = EPOLL_CTL_ADD;
    }







    ee.events = events | (uint32_t) flags;
    ee.data.ptr = (void *) ((uintptr_t) c | ev->instance);

    ngx_log_debug3(NGX_LOG_DEBUG_EVENT, ev->log, 0,
                   "epoll add event: fd:%d op:%d ev:%08XD",
                   c->fd, op, ee.events);

    if (epoll_ctl(ep, op, c->fd, &ee) == -1) {
        ngx_log_error(NGX_LOG_ALERT, ev->log, ngx_errno,
                      "epoll_ctl(%d, %d) failed", op, c->fd);
        return NGX_ERROR;
    }

    ev->active = 1;




    return NGX_OK;
}

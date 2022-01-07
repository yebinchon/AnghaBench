
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {void* ptr; } ;
struct epoll_event {int events; TYPE_1__ data; } ;
typedef int ngx_int_t ;
struct TYPE_9__ {TYPE_3__* write; TYPE_2__* read; int fd; int log; } ;
typedef TYPE_4__ ngx_connection_t ;
struct TYPE_8__ {int active; } ;
struct TYPE_7__ {uintptr_t instance; int active; } ;


 int EPOLLET ;
 int EPOLLIN ;
 int EPOLLOUT ;
 int EPOLLRDHUP ;
 int EPOLL_CTL_ADD ;
 int NGX_ERROR ;
 int NGX_LOG_ALERT ;
 int NGX_LOG_DEBUG_EVENT ;
 int NGX_OK ;
 int ep ;
 int epoll_ctl (int ,int ,int ,struct epoll_event*) ;
 int ngx_errno ;
 int ngx_log_debug2 (int ,int ,int ,char*,int ,int) ;
 int ngx_log_error (int ,int ,int ,char*,int ) ;

__attribute__((used)) static ngx_int_t
ngx_epoll_add_connection(ngx_connection_t *c)
{
    struct epoll_event ee;

    ee.events = EPOLLIN|EPOLLOUT|EPOLLET|EPOLLRDHUP;
    ee.data.ptr = (void *) ((uintptr_t) c | c->read->instance);

    ngx_log_debug2(NGX_LOG_DEBUG_EVENT, c->log, 0,
                   "epoll add connection: fd:%d ev:%08XD", c->fd, ee.events);

    if (epoll_ctl(ep, EPOLL_CTL_ADD, c->fd, &ee) == -1) {
        ngx_log_error(NGX_LOG_ALERT, c->log, ngx_errno,
                      "epoll_ctl(EPOLL_CTL_ADD, %d) failed", c->fd);
        return NGX_ERROR;
    }

    c->read->active = 1;
    c->write->active = 1;

    return NGX_OK;
}

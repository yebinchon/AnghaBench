
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct pollfd {int dummy; } ;
typedef scalar_t__ ssize_t ;
typedef int ngx_uint_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_7__ {int index; int log; TYPE_2__* data; } ;
typedef TYPE_1__ ngx_event_t ;
struct TYPE_8__ {int fd; } ;
typedef TYPE_2__ ngx_connection_t ;
struct TYPE_9__ {short events; scalar_t__ revents; int fd; } ;


 int NGX_CLOSE_EVENT ;
 scalar_t__ NGX_ERROR ;
 int NGX_LOG_ALERT ;
 int NGX_LOG_DEBUG_EVENT ;
 int NGX_LOG_WARN ;
 scalar_t__ NGX_OK ;
 TYPE_1__** change_index ;
 TYPE_3__* change_list ;
 int dp ;
 int max_changes ;
 int nchanges ;
 int ngx_errno ;
 int ngx_log_debug3 (int ,int ,int ,char*,int ,scalar_t__,int) ;
 int ngx_log_error (int ,int ,int ,char*) ;
 scalar_t__ write (int ,TYPE_3__*,size_t) ;

__attribute__((used)) static ngx_int_t
ngx_devpoll_set_event(ngx_event_t *ev, ngx_int_t event, ngx_uint_t flags)
{
    size_t n;
    ngx_connection_t *c;

    c = ev->data;

    ngx_log_debug3(NGX_LOG_DEBUG_EVENT, ev->log, 0,
                   "devpoll fd:%d ev:%04Xi fl:%04Xi", c->fd, event, flags);

    if (nchanges >= max_changes) {
        ngx_log_error(NGX_LOG_WARN, ev->log, 0,
                      "/dev/pool change list is filled up");

        n = nchanges * sizeof(struct pollfd);
        if (write(dp, change_list, n) != (ssize_t) n) {
            ngx_log_error(NGX_LOG_ALERT, ev->log, ngx_errno,
                          "write(/dev/poll) failed");
            return NGX_ERROR;
        }

        nchanges = 0;
    }

    change_list[nchanges].fd = c->fd;
    change_list[nchanges].events = (short) event;
    change_list[nchanges].revents = 0;

    change_index[nchanges] = ev;
    ev->index = nchanges;

    nchanges++;

    if (flags & NGX_CLOSE_EVENT) {
        n = nchanges * sizeof(struct pollfd);
        if (write(dp, change_list, n) != (ssize_t) n) {
            ngx_log_error(NGX_LOG_ALERT, ev->log, ngx_errno,
                          "write(/dev/poll) failed");
            return NGX_ERROR;
        }

        nchanges = 0;
    }

    return NGX_OK;
}

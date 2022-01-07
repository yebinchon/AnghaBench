
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u_short ;
struct timespec {scalar_t__ tv_nsec; scalar_t__ tv_sec; } ;
struct kevent {short filter; int fflags; scalar_t__ data; int udata; scalar_t__ flags; int ident; } ;
typedef int ngx_uint_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_4__ {uintptr_t instance; size_t index; int log; scalar_t__ available; TYPE_2__* data; } ;
typedef TYPE_1__ ngx_event_t ;
struct TYPE_5__ {int fd; } ;
typedef TYPE_2__ ngx_connection_t ;


 scalar_t__ EVFILT_VNODE ;
 scalar_t__ NGX_ERROR ;
 int NGX_FLUSH_EVENT ;
 int NGX_KQUEUE_UDATA_T (uintptr_t) ;
 int NGX_LOG_ALERT ;
 int NGX_LOG_DEBUG_EVENT ;
 int NGX_LOG_WARN ;
 int NGX_LOWAT_EVENT ;
 scalar_t__ NGX_OK ;
 int NOTE_ATTRIB ;
 int NOTE_DELETE ;
 int NOTE_EXTEND ;
 int NOTE_LOWAT ;
 int NOTE_RENAME ;
 int NOTE_REVOKE ;
 int NOTE_WRITE ;
 struct kevent* change_list ;
 int kevent (int ,struct kevent*,int,int *,int ,struct timespec*) ;
 size_t max_changes ;
 size_t nchanges ;
 int ngx_errno ;
 int ngx_kqueue ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 int ngx_log_debug3 (int ,int ,int ,char*,int ,scalar_t__,int) ;
 int ngx_log_error (int ,int ,int ,char*) ;

__attribute__((used)) static ngx_int_t
ngx_kqueue_set_event(ngx_event_t *ev, ngx_int_t filter, ngx_uint_t flags)
{
    struct kevent *kev;
    struct timespec ts;
    ngx_connection_t *c;

    c = ev->data;

    ngx_log_debug3(NGX_LOG_DEBUG_EVENT, ev->log, 0,
                   "kevent set event: %d: ft:%i fl:%04Xi",
                   c->fd, filter, flags);

    if (nchanges >= max_changes) {
        ngx_log_error(NGX_LOG_WARN, ev->log, 0,
                      "kqueue change list is filled up");

        ts.tv_sec = 0;
        ts.tv_nsec = 0;

        if (kevent(ngx_kqueue, change_list, (int) nchanges, ((void*)0), 0, &ts)
            == -1)
        {
            ngx_log_error(NGX_LOG_ALERT, ev->log, ngx_errno, "kevent() failed");
            return NGX_ERROR;
        }

        nchanges = 0;
    }

    kev = &change_list[nchanges];

    kev->ident = c->fd;
    kev->filter = (short) filter;
    kev->flags = (u_short) flags;
    kev->udata = NGX_KQUEUE_UDATA_T ((uintptr_t) ev | ev->instance);

    if (filter == EVFILT_VNODE) {
        kev->fflags = NOTE_DELETE|NOTE_WRITE|NOTE_EXTEND
                                 |NOTE_ATTRIB|NOTE_RENAME




                      ;
        kev->data = 0;

    } else {
        kev->fflags = 0;
        kev->data = 0;

    }

    ev->index = nchanges;
    nchanges++;

    if (flags & NGX_FLUSH_EVENT) {
        ts.tv_sec = 0;
        ts.tv_nsec = 0;

        ngx_log_debug0(NGX_LOG_DEBUG_EVENT, ev->log, 0, "kevent flush");

        if (kevent(ngx_kqueue, change_list, (int) nchanges, ((void*)0), 0, &ts)
            == -1)
        {
            ngx_log_error(NGX_LOG_ALERT, ev->log, ngx_errno, "kevent() failed");
            return NGX_ERROR;
        }

        nchanges = 0;
    }

    return NGX_OK;
}

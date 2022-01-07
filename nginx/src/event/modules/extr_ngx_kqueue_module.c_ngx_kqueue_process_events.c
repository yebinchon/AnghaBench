
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_10__ ;


struct timespec {int tv_sec; int tv_nsec; } ;
typedef int ngx_uint_t ;
typedef int ngx_queue_t ;
typedef int ngx_msec_t ;
typedef int ngx_int_t ;
struct TYPE_14__ {int instance; int pending_eof; int ready; int kq_vnode; int complete; int (* handler ) (TYPE_1__*) ;scalar_t__ accept; int kq_errno; int available; int active; int oneshot; TYPE_5__* log; int closed; } ;
typedef TYPE_1__ ngx_event_t ;
typedef int ngx_err_t ;
struct TYPE_15__ {TYPE_5__* log; } ;
typedef TYPE_2__ ngx_cycle_t ;
struct TYPE_16__ {int log_level; } ;
struct TYPE_13__ {int flags; int filter; int fflags; int data; scalar_t__ udata; scalar_t__ ident; } ;




 int EVFILT_TIMER ;



 int EV_EOF ;
 int EV_ERROR ;
 int NGX_EINTR ;
 int NGX_ERROR ;
 int NGX_LOG_ALERT ;
 int NGX_LOG_DEBUG_CONNECTION ;
 int NGX_LOG_DEBUG_EVENT ;
 int NGX_LOG_INFO ;
 int NGX_OK ;
 int NGX_POST_EVENTS ;
 int NGX_TIMER_INFINITE ;
 int NGX_UPDATE_TIME ;
 int change_list ;
 TYPE_10__* event_list ;
 int kevent (int ,int ,int,TYPE_10__*,int,struct timespec*) ;
 scalar_t__ nchanges ;
 scalar_t__ nevents ;
 int ngx_errno ;
 scalar_t__ ngx_event_timer_alarm ;
 int ngx_kqueue ;
 int ngx_kqueue_dump_event (TYPE_5__*,TYPE_10__*) ;
 int ngx_log_debug1 (int ,TYPE_5__*,int ,char*,...) ;
 int ngx_log_debug2 (int ,TYPE_5__*,int ,char*,int,int) ;
 int ngx_log_error (int,TYPE_5__*,int,char*,...) ;
 int ngx_post_event (TYPE_1__*,int *) ;
 int ngx_posted_accept_events ;
 int ngx_posted_events ;
 int ngx_time_update () ;
 int stub1 (TYPE_1__*) ;

__attribute__((used)) static ngx_int_t
ngx_kqueue_process_events(ngx_cycle_t *cycle, ngx_msec_t timer,
    ngx_uint_t flags)
{
    int events, n;
    ngx_int_t i, instance;
    ngx_uint_t level;
    ngx_err_t err;
    ngx_event_t *ev;
    ngx_queue_t *queue;
    struct timespec ts, *tp;

    n = (int) nchanges;
    nchanges = 0;

    if (timer == NGX_TIMER_INFINITE) {
        tp = ((void*)0);

    } else {

        ts.tv_sec = timer / 1000;
        ts.tv_nsec = (timer % 1000) * 1000000;
        tp = &ts;
    }

    ngx_log_debug2(NGX_LOG_DEBUG_EVENT, cycle->log, 0,
                   "kevent timer: %M, changes: %d", timer, n);

    events = kevent(ngx_kqueue, change_list, n, event_list, (int) nevents, tp);

    err = (events == -1) ? ngx_errno : 0;

    if (flags & NGX_UPDATE_TIME || ngx_event_timer_alarm) {
        ngx_time_update();
    }

    ngx_log_debug1(NGX_LOG_DEBUG_EVENT, cycle->log, 0,
                   "kevent events: %d", events);

    if (err) {
        if (err == NGX_EINTR) {

            if (ngx_event_timer_alarm) {
                ngx_event_timer_alarm = 0;
                return NGX_OK;
            }

            level = NGX_LOG_INFO;

        } else {
            level = NGX_LOG_ALERT;
        }

        ngx_log_error(level, cycle->log, err, "kevent() failed");
        return NGX_ERROR;
    }

    if (events == 0) {
        if (timer != NGX_TIMER_INFINITE) {
            return NGX_OK;
        }

        ngx_log_error(NGX_LOG_ALERT, cycle->log, 0,
                      "kevent() returned no events without timeout");
        return NGX_ERROR;
    }

    for (i = 0; i < events; i++) {

        ngx_kqueue_dump_event(cycle->log, &event_list[i]);

        if (event_list[i].flags & EV_ERROR) {
            ngx_log_error(NGX_LOG_ALERT, cycle->log, event_list[i].data,
                          "kevent() error on %d filter:%d flags:%04Xd",
                          (int) event_list[i].ident, event_list[i].filter,
                          event_list[i].flags);
            continue;
        }
        ev = (ngx_event_t *) event_list[i].udata;

        switch (event_list[i].filter) {

        case 131:
        case 128:

            instance = (uintptr_t) ev & 1;
            ev = (ngx_event_t *) ((uintptr_t) ev & (uintptr_t) ~1);

            if (ev->closed || ev->instance != instance) {






                ngx_log_debug1(NGX_LOG_DEBUG_EVENT, cycle->log, 0,
                               "kevent: stale event %p", ev);
                continue;
            }

            if (ev->log && (ev->log->log_level & NGX_LOG_DEBUG_CONNECTION)) {
                ngx_kqueue_dump_event(ev->log, &event_list[i]);
            }

            if (ev->oneshot) {
                ev->active = 0;
            }

            ev->available = event_list[i].data;

            if (event_list[i].flags & EV_EOF) {
                ev->pending_eof = 1;
                ev->kq_errno = event_list[i].fflags;
            }

            ev->ready = 1;

            break;

        case 129:
            ev->kq_vnode = 1;

            break;

        case 132:
            ev->complete = 1;
            ev->ready = 1;

            break;


        case 130:
            break;


        default:
            ngx_log_error(NGX_LOG_ALERT, cycle->log, 0,
                          "unexpected kevent() filter %d",
                          event_list[i].filter);
            continue;
        }

        if (flags & NGX_POST_EVENTS) {
            queue = ev->accept ? &ngx_posted_accept_events
                               : &ngx_posted_events;

            ngx_post_event(ev, queue);

            continue;
        }

        ev->handler(ev);
    }

    return NGX_OK;
}

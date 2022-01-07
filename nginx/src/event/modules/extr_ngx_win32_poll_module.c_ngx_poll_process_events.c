
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_11__ ;


typedef int u_int ;
typedef size_t ngx_uint_t ;
typedef scalar_t__ ngx_socket_t ;
typedef int ngx_queue_t ;
typedef scalar_t__ ngx_msec_t ;
typedef int ngx_int_t ;
struct TYPE_15__ {int ready; int available; scalar_t__ active; scalar_t__ accept; } ;
typedef TYPE_1__ ngx_event_t ;
typedef int ngx_err_t ;
struct TYPE_16__ {TYPE_6__* log; } ;
typedef TYPE_2__ ngx_cycle_t ;
struct TYPE_17__ {scalar_t__ fd; TYPE_1__* write; TYPE_1__* read; } ;
typedef TYPE_3__ ngx_connection_t ;
struct TYPE_18__ {int log_level; } ;
struct TYPE_14__ {scalar_t__ fd; int revents; int events; } ;


 int NGX_ERROR ;
 int NGX_LOG_ALERT ;
 int NGX_LOG_DEBUG_ALL ;
 int NGX_LOG_DEBUG_EVENT ;
 int NGX_OK ;
 scalar_t__ NGX_TIMER_INFINITE ;
 size_t NGX_UPDATE_TIME ;
 int POLLERR ;
 int POLLHUP ;
 int POLLIN ;
 int POLLNVAL ;
 int POLLOUT ;
 int WSAPoll (TYPE_11__*,int ,int) ;
 TYPE_3__** event_index ;
 TYPE_11__* event_list ;
 size_t nevents ;
 int ngx_errno ;
 scalar_t__ ngx_event_timer_alarm ;
 int ngx_log_debug1 (int ,TYPE_6__*,int ,char*,scalar_t__) ;
 int ngx_log_debug2 (int ,TYPE_6__*,int ,char*,int,size_t) ;
 int ngx_log_debug3 (int ,TYPE_6__*,int ,char*,size_t,scalar_t__,int ) ;
 int ngx_log_debug4 (int ,TYPE_6__*,int ,char*,size_t,scalar_t__,int ,int) ;
 int ngx_log_error (int ,TYPE_6__*,int,char*,...) ;
 int ngx_post_event (TYPE_1__*,int *) ;
 int ngx_posted_accept_events ;
 int ngx_posted_events ;
 int ngx_time_update () ;

__attribute__((used)) static ngx_int_t
ngx_poll_process_events(ngx_cycle_t *cycle, ngx_msec_t timer, ngx_uint_t flags)
{
    int ready, revents;
    ngx_err_t err;
    ngx_uint_t i, found;
    ngx_event_t *ev;
    ngx_queue_t *queue;
    ngx_connection_t *c;
    ngx_log_debug1(NGX_LOG_DEBUG_EVENT, cycle->log, 0, "poll timer: %M", timer);

    ready = WSAPoll(event_list, (u_int) nevents, (int) timer);

    err = (ready == -1) ? ngx_errno : 0;

    if (flags & NGX_UPDATE_TIME || ngx_event_timer_alarm) {
        ngx_time_update();
    }

    ngx_log_debug2(NGX_LOG_DEBUG_EVENT, cycle->log, 0,
                   "poll ready %d of %ui", ready, nevents);

    if (err) {
        ngx_log_error(NGX_LOG_ALERT, cycle->log, err, "WSAPoll() failed");
        return NGX_ERROR;
    }

    if (ready == 0) {
        if (timer != NGX_TIMER_INFINITE) {
            return NGX_OK;
        }

        ngx_log_error(NGX_LOG_ALERT, cycle->log, 0,
                      "WSAPoll() returned no events without timeout");
        return NGX_ERROR;
    }

    for (i = 0; i < nevents && ready; i++) {

        revents = event_list[i].revents;


        ngx_log_debug4(NGX_LOG_DEBUG_EVENT, cycle->log, 0,
                       "poll: %ui: fd:%d ev:%04Xd rev:%04Xd",
                       i, event_list[i].fd, event_list[i].events, revents);
        if (revents & POLLNVAL) {
            ngx_log_error(NGX_LOG_ALERT, cycle->log, 0,
                          "poll() error fd:%d ev:%04Xd rev:%04Xd",
                          event_list[i].fd, event_list[i].events, revents);
        }

        if (revents & ~(POLLIN|POLLOUT|POLLERR|POLLHUP|POLLNVAL)) {
            ngx_log_error(NGX_LOG_ALERT, cycle->log, 0,
                          "strange poll() events fd:%d ev:%04Xd rev:%04Xd",
                          event_list[i].fd, event_list[i].events, revents);
        }

        if (event_list[i].fd == (ngx_socket_t) -1) {




            continue;
        }

        c = event_index[i];

        if (c->fd == (ngx_socket_t) -1) {
            ngx_log_error(NGX_LOG_ALERT, cycle->log, 0, "unexpected event");






            if (i == nevents - 1) {
                nevents--;
            } else {
                event_list[i].fd = (ngx_socket_t) -1;
            }

            continue;
        }

        if (revents & (POLLERR|POLLHUP|POLLNVAL)) {






            revents |= POLLIN|POLLOUT;
        }

        found = 0;

        if ((revents & POLLIN) && c->read->active) {
            found = 1;

            ev = c->read;
            ev->ready = 1;
            ev->available = -1;

            queue = ev->accept ? &ngx_posted_accept_events
                               : &ngx_posted_events;

            ngx_post_event(ev, queue);
        }

        if ((revents & POLLOUT) && c->write->active) {
            found = 1;

            ev = c->write;
            ev->ready = 1;

            ngx_post_event(ev, &ngx_posted_events);
        }

        if (found) {
            ready--;
            continue;
        }
    }

    if (ready != 0) {
        ngx_log_error(NGX_LOG_ALERT, cycle->log, 0, "poll ready != events");
    }

    return NGX_OK;
}

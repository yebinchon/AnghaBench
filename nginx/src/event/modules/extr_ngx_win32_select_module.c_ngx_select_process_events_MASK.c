#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct timeval {long tv_sec; long tv_usec; } ;
typedef  size_t ngx_uint_t ;
typedef  int /*<<< orphan*/  ngx_queue_t ;
typedef  int ngx_msec_t ;
typedef  int /*<<< orphan*/  ngx_int_t ;
struct TYPE_11__ {int ready; int available; scalar_t__ accept; scalar_t__ write; TYPE_3__* data; } ;
typedef  TYPE_1__ ngx_event_t ;
typedef  int ngx_err_t ;
struct TYPE_12__ {TYPE_7__* log; } ;
typedef  TYPE_2__ ngx_cycle_t ;
struct TYPE_13__ {int fd; } ;
typedef  TYPE_3__ ngx_connection_t ;
struct TYPE_14__ {int log_level; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NGX_ERROR ; 
 int /*<<< orphan*/  NGX_LOG_ALERT ; 
 int NGX_LOG_DEBUG_ALL ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_EVENT ; 
 int /*<<< orphan*/  NGX_OK ; 
 int NGX_TIMER_INFINITE ; 
 size_t NGX_UPDATE_TIME ; 
 int WSAENOTSOCK ; 
 TYPE_1__** event_index ; 
 int /*<<< orphan*/  master_read_fd_set ; 
 int /*<<< orphan*/  master_write_fd_set ; 
 scalar_t__ max_read ; 
 scalar_t__ max_write ; 
 size_t nevents ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_7__*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_7__*,int /*<<< orphan*/ ,char*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_7__*,int,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ngx_posted_accept_events ; 
 int /*<<< orphan*/  ngx_posted_events ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int ngx_socket_errno ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 
 int /*<<< orphan*/  work_except_fd_set ; 
 int /*<<< orphan*/  work_read_fd_set ; 
 int /*<<< orphan*/  work_write_fd_set ; 

__attribute__((used)) static ngx_int_t
FUNC9(ngx_cycle_t *cycle, ngx_msec_t timer,
    ngx_uint_t flags)
{
    int                ready, nready;
    ngx_err_t          err;
    ngx_uint_t         i, found;
    ngx_event_t       *ev;
    ngx_queue_t       *queue;
    struct timeval     tv, *tp;
    ngx_connection_t  *c;

#if (NGX_DEBUG)
    if (cycle->log->log_level & NGX_LOG_DEBUG_ALL) {
        for (i = 0; i < nevents; i++) {
            ev = event_index[i];
            c = ev->data;
            ngx_log_debug2(NGX_LOG_DEBUG_EVENT, cycle->log, 0,
                           "select event: fd:%d wr:%d", c->fd, ev->write);
        }
    }
#endif

    if (timer == NGX_TIMER_INFINITE) {
        tp = NULL;

    } else {
        tv.tv_sec = (long) (timer / 1000);
        tv.tv_usec = (long) ((timer % 1000) * 1000);
        tp = &tv;
    }

    FUNC1(NGX_LOG_DEBUG_EVENT, cycle->log, 0,
                   "select timer: %M", timer);

    work_read_fd_set = master_read_fd_set;
    work_write_fd_set = master_write_fd_set;
    work_except_fd_set = master_write_fd_set;

    if (max_read || max_write) {
        ready = FUNC8(0, &work_read_fd_set, &work_write_fd_set,
                       &work_except_fd_set, tp);

    } else {

        /*
         * Winsock select() requires that at least one descriptor set must be
         * be non-null, and any non-null descriptor set must contain at least
         * one handle to a socket.  Otherwise select() returns WSAEINVAL.
         */

        FUNC4(timer);

        ready = 0;
    }

    err = (ready == -1) ? ngx_socket_errno : 0;

    if (flags & NGX_UPDATE_TIME) {
        FUNC7();
    }

    FUNC1(NGX_LOG_DEBUG_EVENT, cycle->log, 0,
                   "select ready %d", ready);

    if (err) {
        FUNC3(NGX_LOG_ALERT, cycle->log, err, "select() failed");

        if (err == WSAENOTSOCK) {
            FUNC6(cycle);
        }

        return NGX_ERROR;
    }

    if (ready == 0) {
        if (timer != NGX_TIMER_INFINITE) {
            return NGX_OK;
        }

        FUNC3(NGX_LOG_ALERT, cycle->log, 0,
                      "select() returned no events without timeout");
        return NGX_ERROR;
    }

    nready = 0;

    for (i = 0; i < nevents; i++) {
        ev = event_index[i];
        c = ev->data;
        found = 0;

        if (ev->write) {
            if (FUNC0(c->fd, &work_write_fd_set)) {
                found++;
                FUNC1(NGX_LOG_DEBUG_EVENT, cycle->log, 0,
                               "select write %d", c->fd);
            }

            if (FUNC0(c->fd, &work_except_fd_set)) {
                found++;
                FUNC1(NGX_LOG_DEBUG_EVENT, cycle->log, 0,
                               "select except %d", c->fd);
            }

        } else {
            if (FUNC0(c->fd, &work_read_fd_set)) {
                found++;
                FUNC1(NGX_LOG_DEBUG_EVENT, cycle->log, 0,
                               "select read %d", c->fd);
            }
        }

        if (found) {
            ev->ready = 1;
            ev->available = -1;

            queue = ev->accept ? &ngx_posted_accept_events
                               : &ngx_posted_events;

            FUNC5(ev, queue);

            nready += found;
        }
    }

    if (ready != nready) {
        FUNC3(NGX_LOG_ALERT, cycle->log, 0,
                      "select ready != events: %d:%d", ready, nready);

        FUNC6(cycle);
    }

    return NGX_OK;
}
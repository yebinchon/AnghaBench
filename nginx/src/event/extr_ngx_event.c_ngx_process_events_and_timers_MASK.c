#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ngx_uint_t ;
typedef  int ngx_msec_t ;
struct TYPE_6__ {int /*<<< orphan*/  log; } ;
typedef  TYPE_1__ ngx_cycle_t ;

/* Variables and functions */
 scalar_t__ NGX_ERROR ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_EVENT ; 
 int /*<<< orphan*/  NGX_POST_EVENTS ; 
 int NGX_TIMER_INFINITE ; 
 int /*<<< orphan*/  NGX_UPDATE_TIME ; 
 scalar_t__ ngx_accept_disabled ; 
 int /*<<< orphan*/  ngx_accept_mutex ; 
 int ngx_accept_mutex_delay ; 
 scalar_t__ ngx_accept_mutex_held ; 
 int ngx_current_msec ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  ngx_posted_accept_events ; 
 int /*<<< orphan*/  ngx_posted_events ; 
 int /*<<< orphan*/  ngx_posted_next_events ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ ngx_timer_resolution ; 
 scalar_t__ FUNC9 (TYPE_1__*) ; 
 scalar_t__ ngx_use_accept_mutex ; 

void
FUNC10(ngx_cycle_t *cycle)
{
    ngx_uint_t  flags;
    ngx_msec_t  timer, delta;

    if (ngx_timer_resolution) {
        timer = NGX_TIMER_INFINITE;
        flags = 0;

    } else {
        timer = FUNC1();
        flags = NGX_UPDATE_TIME;

#if (NGX_WIN32)

        /* handle signals from master in case of network inactivity */

        if (timer == NGX_TIMER_INFINITE || timer > 500) {
            timer = 500;
        }

#endif
    }

    if (ngx_use_accept_mutex) {
        if (ngx_accept_disabled > 0) {
            ngx_accept_disabled--;

        } else {
            if (FUNC9(cycle) == NGX_ERROR) {
                return;
            }

            if (ngx_accept_mutex_held) {
                flags |= NGX_POST_EVENTS;

            } else {
                if (timer == NGX_TIMER_INFINITE
                    || timer > ngx_accept_mutex_delay)
                {
                    timer = ngx_accept_mutex_delay;
                }
            }
        }
    }

    if (!FUNC6(&ngx_posted_next_events)) {
        FUNC5(&ngx_posted_events, &ngx_posted_next_events);
        FUNC7(&ngx_posted_next_events);
        timer = 0;
    }

    delta = ngx_current_msec;

    (void) FUNC4(cycle, timer, flags);

    delta = ngx_current_msec - delta;

    FUNC3(NGX_LOG_DEBUG_EVENT, cycle->log, 0,
                   "timer delta: %M", delta);

    FUNC2(cycle, &ngx_posted_accept_events);

    if (ngx_accept_mutex_held) {
        FUNC8(&ngx_accept_mutex);
    }

    if (delta) {
        FUNC0();
    }

    FUNC2(cycle, &ngx_posted_events);
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_9__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u_long ;
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  ngx_uint_t ;
typedef  scalar_t__ ngx_msec_t ;
typedef  size_t ngx_int_t ;
typedef  int /*<<< orphan*/  ngx_err_t ;
struct TYPE_18__ {int /*<<< orphan*/  log; } ;
typedef  TYPE_1__ ngx_cycle_t ;
struct TYPE_19__ {scalar_t__ handle; } ;
typedef  scalar_t__ HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 size_t INFINITE ; 
 int MAXIMUM_WAIT_OBJECTS ; 
 int /*<<< orphan*/  NGX_LOG_ALERT ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_CORE ; 
 int /*<<< orphan*/  NGX_LOG_NOTICE ; 
 scalar_t__ NGX_OK ; 
 int /*<<< orphan*/  NGX_PROCESS_JUST_RESPAWN ; 
 int /*<<< orphan*/  NGX_PROCESS_RESPAWN ; 
 scalar_t__ NGX_PROCESS_WORKER ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 size_t WAIT_FAILED ; 
 size_t WAIT_OBJECT_0 ; 
 size_t WAIT_TIMEOUT ; 
 size_t FUNC4 (size_t,scalar_t__*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/ * ngx_cache_manager_mutex ; 
 size_t ngx_cache_manager_mutex_name ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 scalar_t__ FUNC8 (TYPE_1__*) ; 
 scalar_t__ ngx_current_msec ; 
 TYPE_1__* ngx_cycle ; 
 int /*<<< orphan*/  ngx_errno ; 
 TYPE_1__* FUNC9 (TYPE_1__*) ; 
 size_t ngx_last_process ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/ * ngx_master_process_event ; 
 size_t ngx_master_process_event_name ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 scalar_t__ ngx_process ; 
 TYPE_9__* ngx_processes ; 
 int ngx_quit ; 
 scalar_t__ ngx_quit_event ; 
 size_t ngx_quit_event_name ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,scalar_t__) ; 
 scalar_t__ ngx_reload_event ; 
 size_t ngx_reload_event_name ; 
 scalar_t__ ngx_reopen_event ; 
 size_t ngx_reopen_event_name ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ ngx_stop_event ; 
 size_t ngx_stop_event_name ; 
 int ngx_terminate ; 
 int /*<<< orphan*/  FUNC20 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC21 () ; 
 int /*<<< orphan*/  ngx_unique ; 
 int /*<<< orphan*/  FUNC22 (TYPE_1__*,size_t) ; 

void
FUNC23(ngx_cycle_t *cycle)
{
    u_long      nev, ev, timeout;
    ngx_err_t   err;
    ngx_int_t   n;
    ngx_msec_t  timer;
    ngx_uint_t  live;
    HANDLE      events[MAXIMUM_WAIT_OBJECTS];

    FUNC18((u_char *) ngx_master_process_event_name,
                "ngx_master_%s%Z", ngx_unique);

    if (ngx_process == NGX_PROCESS_WORKER) {
        FUNC22(cycle, ngx_master_process_event_name);
        return;
    }

    FUNC10(NGX_LOG_DEBUG_CORE, cycle->log, 0, "master started");

    FUNC7(cycle);

    FUNC3("ngx_unique", ngx_unique);

    ngx_master_process_event = FUNC0(NULL, 1, 0,
                                           ngx_master_process_event_name);
    if (ngx_master_process_event == NULL) {
        FUNC12(NGX_LOG_ALERT, cycle->log, ngx_errno,
                      "CreateEvent(\"%s\") failed",
                      ngx_master_process_event_name);
        FUNC5(2);
    }

    if (FUNC8(cycle) != NGX_OK) {
        FUNC5(2);
    }

    FUNC18((u_char *) ngx_cache_manager_mutex_name,
                "ngx_cache_manager_mutex_%s%Z", ngx_unique);

    ngx_cache_manager_mutex = FUNC1(NULL, 0,
                                          ngx_cache_manager_mutex_name);
    if (ngx_cache_manager_mutex == NULL) {
        FUNC12(NGX_LOG_ALERT, cycle->log, ngx_errno,
                   "CreateMutex(\"%s\") failed", ngx_cache_manager_mutex_name);
        FUNC5(2);
    }


    events[0] = ngx_stop_event;
    events[1] = ngx_quit_event;
    events[2] = ngx_reopen_event;
    events[3] = ngx_reload_event;

    FUNC6(cycle);

    if (FUNC19(cycle, NGX_PROCESS_RESPAWN) == 0) {
        FUNC5(2);
    }

    timer = 0;
    timeout = INFINITE;

    for ( ;; ) {

        nev = 4;
        for (n = 0; n < ngx_last_process; n++) {
            if (ngx_processes[n].handle) {
                events[nev++] = ngx_processes[n].handle;
            }
        }

        if (timer) {
            timeout = timer > ngx_current_msec ? timer - ngx_current_msec : 0;
        }

        ev = FUNC4(nev, events, 0, timeout);

        err = ngx_errno;
        FUNC21();

        FUNC11(NGX_LOG_DEBUG_CORE, cycle->log, 0,
                       "master WaitForMultipleObjects: %ul", ev);

        if (ev == WAIT_OBJECT_0) {
            FUNC12(NGX_LOG_NOTICE, cycle->log, 0, "exiting");

            if (FUNC2(ngx_stop_event) == 0) {
                FUNC12(NGX_LOG_ALERT, cycle->log, 0,
                              "ResetEvent(\"%s\") failed", ngx_stop_event_name);
            }

            if (timer == 0) {
                timer = ngx_current_msec + 5000;
            }

            ngx_terminate = 1;
            FUNC14(cycle, 0);

            continue;
        }

        if (ev == WAIT_OBJECT_0 + 1) {
            FUNC12(NGX_LOG_NOTICE, cycle->log, 0, "shutting down");

            if (FUNC2(ngx_quit_event) == 0) {
                FUNC12(NGX_LOG_ALERT, cycle->log, 0,
                              "ResetEvent(\"%s\") failed", ngx_quit_event_name);
            }

            ngx_quit = 1;
            FUNC14(cycle, 0);

            continue;
        }

        if (ev == WAIT_OBJECT_0 + 2) {
            FUNC12(NGX_LOG_NOTICE, cycle->log, 0, "reopening logs");

            if (FUNC2(ngx_reopen_event) == 0) {
                FUNC12(NGX_LOG_ALERT, cycle->log, 0,
                              "ResetEvent(\"%s\") failed",
                              ngx_reopen_event_name);
            }

            FUNC16(cycle, -1);
            FUNC17(cycle);

            continue;
        }

        if (ev == WAIT_OBJECT_0 + 3) {
            FUNC12(NGX_LOG_NOTICE, cycle->log, 0, "reconfiguring");

            if (FUNC2(ngx_reload_event) == 0) {
                FUNC12(NGX_LOG_ALERT, cycle->log, 0,
                              "ResetEvent(\"%s\") failed",
                              ngx_reload_event_name);
            }

            cycle = FUNC9(cycle);
            if (cycle == NULL) {
                cycle = (ngx_cycle_t *) ngx_cycle;
                continue;
            }

            ngx_cycle = cycle;

            FUNC6(cycle);

            if (FUNC19(cycle, NGX_PROCESS_JUST_RESPAWN)) {
                FUNC14(cycle, 1);
            }

            continue;
        }

        if (ev > WAIT_OBJECT_0 + 3 && ev < WAIT_OBJECT_0 + nev) {

            FUNC10(NGX_LOG_DEBUG_CORE, cycle->log, 0, "reap worker");

            live = FUNC15(cycle, events[ev]);

            if (!live && (ngx_terminate || ngx_quit)) {
                FUNC13(cycle);
            }

            continue;
        }

        if (ev == WAIT_TIMEOUT) {
            FUNC20(cycle);

            FUNC13(cycle);
        }

        if (ev == WAIT_FAILED) {
            FUNC12(NGX_LOG_ALERT, cycle->log, err,
                          "WaitForMultipleObjects() failed");

            continue;
        }

        FUNC12(NGX_LOG_ALERT, cycle->log, 0,
            "WaitForMultipleObjects() returned unexpected value %ul", ev);
    }
}
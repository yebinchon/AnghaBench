#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_long ;
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/ * ngx_tid_t ;
typedef  int /*<<< orphan*/  ngx_log_t ;
typedef  scalar_t__ ngx_err_t ;
struct TYPE_4__ {int /*<<< orphan*/ * log; } ;
typedef  TYPE_1__ ngx_cycle_t ;
typedef  int /*<<< orphan*/ * HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  EVENT_MODIFY_STATE ; 
 int /*<<< orphan*/  INFINITE ; 
 int /*<<< orphan*/  NGX_LOG_ALERT ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_CORE ; 
 int /*<<< orphan*/  NGX_LOG_NOTICE ; 
 int NGX_PROCESS_SYNC_NAME ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SYNCHRONIZE ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ WAIT_FAILED ; 
 scalar_t__ WAIT_OBJECT_0 ; 
 scalar_t__ FUNC5 (scalar_t__,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  ngx_cache_loader_thread ; 
 int /*<<< orphan*/ * ngx_cache_manager_event ; 
 int /*<<< orphan*/ * ngx_cache_manager_mutex ; 
 scalar_t__ ngx_cache_manager_mutex_name ; 
 int /*<<< orphan*/  ngx_cache_manager_thread ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ ngx_errno ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,char*,...) ; 
 int /*<<< orphan*/  ngx_pid ; 
 int ngx_quit ; 
 int ngx_reopen ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int ngx_terminate ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  ngx_unique ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  ngx_worker_thread ; 

__attribute__((used)) static void
FUNC15(ngx_cycle_t *cycle, char *mevn)
{
    char        wtevn[NGX_PROCESS_SYNC_NAME];
    char        wqevn[NGX_PROCESS_SYNC_NAME];
    char        wroevn[NGX_PROCESS_SYNC_NAME];
    HANDLE      mev, events[3];
    u_long      nev, ev;
    ngx_err_t   err;
    ngx_tid_t   wtid, cmtid, cltid;
    ngx_log_t  *log;

    log = cycle->log;

    FUNC9(NGX_LOG_DEBUG_CORE, log, 0, "worker started");

    FUNC12((u_char *) wtevn, "ngx_worker_term_%P%Z", ngx_pid);
    events[0] = FUNC0(NULL, 1, 0, wtevn);
    if (events[0] == NULL) {
        FUNC11(NGX_LOG_ALERT, log, ngx_errno,
                      "CreateEvent(\"%s\") failed", wtevn);
        goto failed;
    }

    FUNC12((u_char *) wqevn, "ngx_worker_quit_%P%Z", ngx_pid);
    events[1] = FUNC0(NULL, 1, 0, wqevn);
    if (events[1] == NULL) {
        FUNC11(NGX_LOG_ALERT, log, ngx_errno,
                      "CreateEvent(\"%s\") failed", wqevn);
        goto failed;
    }

    FUNC12((u_char *) wroevn, "ngx_worker_reopen_%P%Z", ngx_pid);
    events[2] = FUNC0(NULL, 1, 0, wroevn);
    if (events[2] == NULL) {
        FUNC11(NGX_LOG_ALERT, log, ngx_errno,
                      "CreateEvent(\"%s\") failed", wroevn);
        goto failed;
    }

    mev = FUNC1(EVENT_MODIFY_STATE, 0, mevn);
    if (mev == NULL) {
        FUNC11(NGX_LOG_ALERT, log, ngx_errno,
                      "OpenEvent(\"%s\") failed", mevn);
        goto failed;
    }

    if (FUNC4(mev) == 0) {
        FUNC11(NGX_LOG_ALERT, log, ngx_errno,
                      "SetEvent(\"%s\") failed", mevn);
        goto failed;
    }


    FUNC12((u_char *) ngx_cache_manager_mutex_name,
                "ngx_cache_manager_mutex_%s%Z", ngx_unique);

    ngx_cache_manager_mutex = FUNC2(SYNCHRONIZE, 0,
                                        ngx_cache_manager_mutex_name);
    if (ngx_cache_manager_mutex == NULL) {
        FUNC11(NGX_LOG_ALERT, log, ngx_errno,
                      "OpenMutex(\"%s\") failed", ngx_cache_manager_mutex_name);
        goto failed;
    }

    ngx_cache_manager_event = FUNC0(NULL, 1, 0, NULL);
    if (ngx_cache_manager_event == NULL) {
        FUNC11(NGX_LOG_ALERT, cycle->log, ngx_errno,
                      "CreateEvent(\"ngx_cache_manager_event\") failed");
        goto failed;
    }


    if (FUNC8(&wtid, ngx_worker_thread, NULL, log) != 0) {
        goto failed;
    }

    if (FUNC8(&cmtid, ngx_cache_manager_thread, NULL, log) != 0) {
        goto failed;
    }

    if (FUNC8(&cltid, ngx_cache_loader_thread, NULL, log) != 0) {
        goto failed;
    }

    for ( ;; ) {
        ev = FUNC5(3, events, 0, INFINITE);

        err = ngx_errno;
        FUNC13();

        FUNC10(NGX_LOG_DEBUG_CORE, log, 0,
                       "worker WaitForMultipleObjects: %ul", ev);

        if (ev == WAIT_OBJECT_0) {
            ngx_terminate = 1;
            FUNC11(NGX_LOG_NOTICE, log, 0, "exiting");

            if (FUNC3(events[0]) == 0) {
                FUNC11(NGX_LOG_ALERT, log, 0,
                              "ResetEvent(\"%s\") failed", wtevn);
            }

            break;
        }

        if (ev == WAIT_OBJECT_0 + 1) {
            ngx_quit = 1;
            FUNC11(NGX_LOG_NOTICE, log, 0, "gracefully shutting down");
            break;
        }

        if (ev == WAIT_OBJECT_0 + 2) {
            ngx_reopen = 1;
            FUNC11(NGX_LOG_NOTICE, log, 0, "reopening logs");

            if (FUNC3(events[2]) == 0) {
                FUNC11(NGX_LOG_ALERT, log, 0,
                              "ResetEvent(\"%s\") failed", wroevn);
            }

            continue;
        }

        if (ev == WAIT_FAILED) {
            FUNC11(NGX_LOG_ALERT, log, err,
                          "WaitForMultipleObjects() failed");

            goto failed;
        }
    }

    /* wait threads */

    if (FUNC4(ngx_cache_manager_event) == 0) {
        FUNC11(NGX_LOG_ALERT, log, ngx_errno,
                      "SetEvent(\"ngx_cache_manager_event\") failed");
    }

    events[1] = wtid;
    events[2] = cmtid;

    nev = 3;

    for ( ;; ) {
        ev = FUNC5(nev, events, 0, INFINITE);

        err = ngx_errno;
        FUNC13();

        FUNC10(NGX_LOG_DEBUG_CORE, log, 0,
                       "worker exit WaitForMultipleObjects: %ul", ev);

        if (ev == WAIT_OBJECT_0) {
            break;
        }

        if (ev == WAIT_OBJECT_0 + 1) {
            if (nev == 2) {
                break;
            }

            events[1] = events[2];
            nev = 2;
            continue;
        }

        if (ev == WAIT_OBJECT_0 + 2) {
            nev = 2;
            continue;
        }

        if (ev == WAIT_FAILED) {
            FUNC11(NGX_LOG_ALERT, log, err,
                          "WaitForMultipleObjects() failed");
            break;
        }
    }

    FUNC7(ngx_cache_manager_event);
    FUNC7(events[0]);
    FUNC7(events[1]);
    FUNC7(events[2]);
    FUNC7(mev);

    FUNC14(cycle);

failed:

    FUNC6(2);
}
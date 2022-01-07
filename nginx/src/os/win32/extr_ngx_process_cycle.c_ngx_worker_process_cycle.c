
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u_long ;
typedef int u_char ;
typedef int * ngx_tid_t ;
typedef int ngx_log_t ;
typedef scalar_t__ ngx_err_t ;
struct TYPE_4__ {int * log; } ;
typedef TYPE_1__ ngx_cycle_t ;
typedef int * HANDLE ;


 int * CreateEvent (int *,int,int ,char*) ;
 int EVENT_MODIFY_STATE ;
 int INFINITE ;
 int NGX_LOG_ALERT ;
 int NGX_LOG_DEBUG_CORE ;
 int NGX_LOG_NOTICE ;
 int NGX_PROCESS_SYNC_NAME ;
 int * OpenEvent (int ,int ,char*) ;
 int * OpenMutex (int ,int ,scalar_t__) ;
 scalar_t__ ResetEvent (int *) ;
 int SYNCHRONIZE ;
 scalar_t__ SetEvent (int *) ;
 scalar_t__ WAIT_FAILED ;
 scalar_t__ WAIT_OBJECT_0 ;
 scalar_t__ WaitForMultipleObjects (scalar_t__,int **,int ,int ) ;
 int exit (int) ;
 int ngx_cache_loader_thread ;
 int * ngx_cache_manager_event ;
 int * ngx_cache_manager_mutex ;
 scalar_t__ ngx_cache_manager_mutex_name ;
 int ngx_cache_manager_thread ;
 int ngx_close_handle (int *) ;
 scalar_t__ ngx_create_thread (int **,int ,int *,int *) ;
 scalar_t__ ngx_errno ;
 int ngx_log_debug0 (int ,int *,int ,char*) ;
 int ngx_log_debug1 (int ,int *,int ,char*,scalar_t__) ;
 int ngx_log_error (int ,int *,scalar_t__,char*,...) ;
 int ngx_pid ;
 int ngx_quit ;
 int ngx_reopen ;
 int ngx_sprintf (int *,char*,int ) ;
 int ngx_terminate ;
 int ngx_time_update () ;
 int ngx_unique ;
 int ngx_worker_process_exit (TYPE_1__*) ;
 int ngx_worker_thread ;

__attribute__((used)) static void
ngx_worker_process_cycle(ngx_cycle_t *cycle, char *mevn)
{
    char wtevn[NGX_PROCESS_SYNC_NAME];
    char wqevn[NGX_PROCESS_SYNC_NAME];
    char wroevn[NGX_PROCESS_SYNC_NAME];
    HANDLE mev, events[3];
    u_long nev, ev;
    ngx_err_t err;
    ngx_tid_t wtid, cmtid, cltid;
    ngx_log_t *log;

    log = cycle->log;

    ngx_log_debug0(NGX_LOG_DEBUG_CORE, log, 0, "worker started");

    ngx_sprintf((u_char *) wtevn, "ngx_worker_term_%P%Z", ngx_pid);
    events[0] = CreateEvent(((void*)0), 1, 0, wtevn);
    if (events[0] == ((void*)0)) {
        ngx_log_error(NGX_LOG_ALERT, log, ngx_errno,
                      "CreateEvent(\"%s\") failed", wtevn);
        goto failed;
    }

    ngx_sprintf((u_char *) wqevn, "ngx_worker_quit_%P%Z", ngx_pid);
    events[1] = CreateEvent(((void*)0), 1, 0, wqevn);
    if (events[1] == ((void*)0)) {
        ngx_log_error(NGX_LOG_ALERT, log, ngx_errno,
                      "CreateEvent(\"%s\") failed", wqevn);
        goto failed;
    }

    ngx_sprintf((u_char *) wroevn, "ngx_worker_reopen_%P%Z", ngx_pid);
    events[2] = CreateEvent(((void*)0), 1, 0, wroevn);
    if (events[2] == ((void*)0)) {
        ngx_log_error(NGX_LOG_ALERT, log, ngx_errno,
                      "CreateEvent(\"%s\") failed", wroevn);
        goto failed;
    }

    mev = OpenEvent(EVENT_MODIFY_STATE, 0, mevn);
    if (mev == ((void*)0)) {
        ngx_log_error(NGX_LOG_ALERT, log, ngx_errno,
                      "OpenEvent(\"%s\") failed", mevn);
        goto failed;
    }

    if (SetEvent(mev) == 0) {
        ngx_log_error(NGX_LOG_ALERT, log, ngx_errno,
                      "SetEvent(\"%s\") failed", mevn);
        goto failed;
    }


    ngx_sprintf((u_char *) ngx_cache_manager_mutex_name,
                "ngx_cache_manager_mutex_%s%Z", ngx_unique);

    ngx_cache_manager_mutex = OpenMutex(SYNCHRONIZE, 0,
                                        ngx_cache_manager_mutex_name);
    if (ngx_cache_manager_mutex == ((void*)0)) {
        ngx_log_error(NGX_LOG_ALERT, log, ngx_errno,
                      "OpenMutex(\"%s\") failed", ngx_cache_manager_mutex_name);
        goto failed;
    }

    ngx_cache_manager_event = CreateEvent(((void*)0), 1, 0, ((void*)0));
    if (ngx_cache_manager_event == ((void*)0)) {
        ngx_log_error(NGX_LOG_ALERT, cycle->log, ngx_errno,
                      "CreateEvent(\"ngx_cache_manager_event\") failed");
        goto failed;
    }


    if (ngx_create_thread(&wtid, ngx_worker_thread, ((void*)0), log) != 0) {
        goto failed;
    }

    if (ngx_create_thread(&cmtid, ngx_cache_manager_thread, ((void*)0), log) != 0) {
        goto failed;
    }

    if (ngx_create_thread(&cltid, ngx_cache_loader_thread, ((void*)0), log) != 0) {
        goto failed;
    }

    for ( ;; ) {
        ev = WaitForMultipleObjects(3, events, 0, INFINITE);

        err = ngx_errno;
        ngx_time_update();

        ngx_log_debug1(NGX_LOG_DEBUG_CORE, log, 0,
                       "worker WaitForMultipleObjects: %ul", ev);

        if (ev == WAIT_OBJECT_0) {
            ngx_terminate = 1;
            ngx_log_error(NGX_LOG_NOTICE, log, 0, "exiting");

            if (ResetEvent(events[0]) == 0) {
                ngx_log_error(NGX_LOG_ALERT, log, 0,
                              "ResetEvent(\"%s\") failed", wtevn);
            }

            break;
        }

        if (ev == WAIT_OBJECT_0 + 1) {
            ngx_quit = 1;
            ngx_log_error(NGX_LOG_NOTICE, log, 0, "gracefully shutting down");
            break;
        }

        if (ev == WAIT_OBJECT_0 + 2) {
            ngx_reopen = 1;
            ngx_log_error(NGX_LOG_NOTICE, log, 0, "reopening logs");

            if (ResetEvent(events[2]) == 0) {
                ngx_log_error(NGX_LOG_ALERT, log, 0,
                              "ResetEvent(\"%s\") failed", wroevn);
            }

            continue;
        }

        if (ev == WAIT_FAILED) {
            ngx_log_error(NGX_LOG_ALERT, log, err,
                          "WaitForMultipleObjects() failed");

            goto failed;
        }
    }



    if (SetEvent(ngx_cache_manager_event) == 0) {
        ngx_log_error(NGX_LOG_ALERT, log, ngx_errno,
                      "SetEvent(\"ngx_cache_manager_event\") failed");
    }

    events[1] = wtid;
    events[2] = cmtid;

    nev = 3;

    for ( ;; ) {
        ev = WaitForMultipleObjects(nev, events, 0, INFINITE);

        err = ngx_errno;
        ngx_time_update();

        ngx_log_debug1(NGX_LOG_DEBUG_CORE, log, 0,
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
            ngx_log_error(NGX_LOG_ALERT, log, err,
                          "WaitForMultipleObjects() failed");
            break;
        }
    }

    ngx_close_handle(ngx_cache_manager_event);
    ngx_close_handle(events[0]);
    ngx_close_handle(events[1]);
    ngx_close_handle(events[2]);
    ngx_close_handle(mev);

    ngx_worker_process_exit(cycle);

failed:

    exit(2);
}

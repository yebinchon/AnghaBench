
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_9__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef size_t u_long ;
typedef int u_char ;
typedef int ngx_uint_t ;
typedef scalar_t__ ngx_msec_t ;
typedef size_t ngx_int_t ;
typedef int ngx_err_t ;
struct TYPE_18__ {int log; } ;
typedef TYPE_1__ ngx_cycle_t ;
struct TYPE_19__ {scalar_t__ handle; } ;
typedef scalar_t__ HANDLE ;


 int * CreateEvent (int *,int,int ,size_t) ;
 int * CreateMutex (int *,int ,size_t) ;
 size_t INFINITE ;
 int MAXIMUM_WAIT_OBJECTS ;
 int NGX_LOG_ALERT ;
 int NGX_LOG_DEBUG_CORE ;
 int NGX_LOG_NOTICE ;
 scalar_t__ NGX_OK ;
 int NGX_PROCESS_JUST_RESPAWN ;
 int NGX_PROCESS_RESPAWN ;
 scalar_t__ NGX_PROCESS_WORKER ;
 scalar_t__ ResetEvent (scalar_t__) ;
 int SetEnvironmentVariable (char*,int ) ;
 size_t WAIT_FAILED ;
 size_t WAIT_OBJECT_0 ;
 size_t WAIT_TIMEOUT ;
 size_t WaitForMultipleObjects (size_t,scalar_t__*,int ,size_t) ;
 int exit (int) ;
 int * ngx_cache_manager_mutex ;
 size_t ngx_cache_manager_mutex_name ;
 int ngx_close_listening_sockets (TYPE_1__*) ;
 int ngx_console_init (TYPE_1__*) ;
 scalar_t__ ngx_create_signal_events (TYPE_1__*) ;
 scalar_t__ ngx_current_msec ;
 TYPE_1__* ngx_cycle ;
 int ngx_errno ;
 TYPE_1__* ngx_init_cycle (TYPE_1__*) ;
 size_t ngx_last_process ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 int ngx_log_debug1 (int ,int ,int ,char*,size_t) ;
 int ngx_log_error (int ,int ,int ,char*,...) ;
 int * ngx_master_process_event ;
 size_t ngx_master_process_event_name ;
 int ngx_master_process_exit (TYPE_1__*) ;
 scalar_t__ ngx_process ;
 TYPE_9__* ngx_processes ;
 int ngx_quit ;
 scalar_t__ ngx_quit_event ;
 size_t ngx_quit_event_name ;
 int ngx_quit_worker_processes (TYPE_1__*,int) ;
 int ngx_reap_worker (TYPE_1__*,scalar_t__) ;
 scalar_t__ ngx_reload_event ;
 size_t ngx_reload_event_name ;
 scalar_t__ ngx_reopen_event ;
 size_t ngx_reopen_event_name ;
 int ngx_reopen_files (TYPE_1__*,int) ;
 int ngx_reopen_worker_processes (TYPE_1__*) ;
 int ngx_sprintf (int *,char*,int ) ;
 scalar_t__ ngx_start_worker_processes (TYPE_1__*,int ) ;
 scalar_t__ ngx_stop_event ;
 size_t ngx_stop_event_name ;
 int ngx_terminate ;
 int ngx_terminate_worker_processes (TYPE_1__*) ;
 int ngx_time_update () ;
 int ngx_unique ;
 int ngx_worker_process_cycle (TYPE_1__*,size_t) ;

void
ngx_master_process_cycle(ngx_cycle_t *cycle)
{
    u_long nev, ev, timeout;
    ngx_err_t err;
    ngx_int_t n;
    ngx_msec_t timer;
    ngx_uint_t live;
    HANDLE events[MAXIMUM_WAIT_OBJECTS];

    ngx_sprintf((u_char *) ngx_master_process_event_name,
                "ngx_master_%s%Z", ngx_unique);

    if (ngx_process == NGX_PROCESS_WORKER) {
        ngx_worker_process_cycle(cycle, ngx_master_process_event_name);
        return;
    }

    ngx_log_debug0(NGX_LOG_DEBUG_CORE, cycle->log, 0, "master started");

    ngx_console_init(cycle);

    SetEnvironmentVariable("ngx_unique", ngx_unique);

    ngx_master_process_event = CreateEvent(((void*)0), 1, 0,
                                           ngx_master_process_event_name);
    if (ngx_master_process_event == ((void*)0)) {
        ngx_log_error(NGX_LOG_ALERT, cycle->log, ngx_errno,
                      "CreateEvent(\"%s\") failed",
                      ngx_master_process_event_name);
        exit(2);
    }

    if (ngx_create_signal_events(cycle) != NGX_OK) {
        exit(2);
    }

    ngx_sprintf((u_char *) ngx_cache_manager_mutex_name,
                "ngx_cache_manager_mutex_%s%Z", ngx_unique);

    ngx_cache_manager_mutex = CreateMutex(((void*)0), 0,
                                          ngx_cache_manager_mutex_name);
    if (ngx_cache_manager_mutex == ((void*)0)) {
        ngx_log_error(NGX_LOG_ALERT, cycle->log, ngx_errno,
                   "CreateMutex(\"%s\") failed", ngx_cache_manager_mutex_name);
        exit(2);
    }


    events[0] = ngx_stop_event;
    events[1] = ngx_quit_event;
    events[2] = ngx_reopen_event;
    events[3] = ngx_reload_event;

    ngx_close_listening_sockets(cycle);

    if (ngx_start_worker_processes(cycle, NGX_PROCESS_RESPAWN) == 0) {
        exit(2);
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

        ev = WaitForMultipleObjects(nev, events, 0, timeout);

        err = ngx_errno;
        ngx_time_update();

        ngx_log_debug1(NGX_LOG_DEBUG_CORE, cycle->log, 0,
                       "master WaitForMultipleObjects: %ul", ev);

        if (ev == WAIT_OBJECT_0) {
            ngx_log_error(NGX_LOG_NOTICE, cycle->log, 0, "exiting");

            if (ResetEvent(ngx_stop_event) == 0) {
                ngx_log_error(NGX_LOG_ALERT, cycle->log, 0,
                              "ResetEvent(\"%s\") failed", ngx_stop_event_name);
            }

            if (timer == 0) {
                timer = ngx_current_msec + 5000;
            }

            ngx_terminate = 1;
            ngx_quit_worker_processes(cycle, 0);

            continue;
        }

        if (ev == WAIT_OBJECT_0 + 1) {
            ngx_log_error(NGX_LOG_NOTICE, cycle->log, 0, "shutting down");

            if (ResetEvent(ngx_quit_event) == 0) {
                ngx_log_error(NGX_LOG_ALERT, cycle->log, 0,
                              "ResetEvent(\"%s\") failed", ngx_quit_event_name);
            }

            ngx_quit = 1;
            ngx_quit_worker_processes(cycle, 0);

            continue;
        }

        if (ev == WAIT_OBJECT_0 + 2) {
            ngx_log_error(NGX_LOG_NOTICE, cycle->log, 0, "reopening logs");

            if (ResetEvent(ngx_reopen_event) == 0) {
                ngx_log_error(NGX_LOG_ALERT, cycle->log, 0,
                              "ResetEvent(\"%s\") failed",
                              ngx_reopen_event_name);
            }

            ngx_reopen_files(cycle, -1);
            ngx_reopen_worker_processes(cycle);

            continue;
        }

        if (ev == WAIT_OBJECT_0 + 3) {
            ngx_log_error(NGX_LOG_NOTICE, cycle->log, 0, "reconfiguring");

            if (ResetEvent(ngx_reload_event) == 0) {
                ngx_log_error(NGX_LOG_ALERT, cycle->log, 0,
                              "ResetEvent(\"%s\") failed",
                              ngx_reload_event_name);
            }

            cycle = ngx_init_cycle(cycle);
            if (cycle == ((void*)0)) {
                cycle = (ngx_cycle_t *) ngx_cycle;
                continue;
            }

            ngx_cycle = cycle;

            ngx_close_listening_sockets(cycle);

            if (ngx_start_worker_processes(cycle, NGX_PROCESS_JUST_RESPAWN)) {
                ngx_quit_worker_processes(cycle, 1);
            }

            continue;
        }

        if (ev > WAIT_OBJECT_0 + 3 && ev < WAIT_OBJECT_0 + nev) {

            ngx_log_debug0(NGX_LOG_DEBUG_CORE, cycle->log, 0, "reap worker");

            live = ngx_reap_worker(cycle, events[ev]);

            if (!live && (ngx_terminate || ngx_quit)) {
                ngx_master_process_exit(cycle);
            }

            continue;
        }

        if (ev == WAIT_TIMEOUT) {
            ngx_terminate_worker_processes(cycle);

            ngx_master_process_exit(cycle);
        }

        if (ev == WAIT_FAILED) {
            ngx_log_error(NGX_LOG_ALERT, cycle->log, err,
                          "WaitForMultipleObjects() failed");

            continue;
        }

        ngx_log_error(NGX_LOG_ALERT, cycle->log, 0,
            "WaitForMultipleObjects() returned unexpected value %ul", ev);
    }
}

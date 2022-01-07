
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_long ;
typedef int ngx_uint_t ;
typedef size_t ngx_int_t ;
struct TYPE_5__ {int log; } ;
typedef TYPE_1__ ngx_cycle_t ;
struct TYPE_6__ {int * handle; int just_spawn; int exiting; int * pid; int * name; int * reopen; int * quit; int * term; } ;
typedef int * HANDLE ;


 scalar_t__ GetExitCodeProcess (int *,int *) ;
 scalar_t__ NGX_INVALID_PID ;
 int NGX_LOG_ALERT ;
 int NGX_LOG_DEBUG_CORE ;
 int NGX_LOG_NOTICE ;
 int ngx_close_handle (int *) ;
 int ngx_errno ;
 size_t ngx_last_process ;
 int ngx_log_debug5 (int ,int ,int ,char*,size_t,int *,int *,int ,int ) ;
 int ngx_log_error (int ,int ,int ,char*,int *,...) ;
 TYPE_4__* ngx_processes ;
 int ngx_quit ;
 scalar_t__ ngx_spawn_process (TYPE_1__*,int *,size_t) ;
 int ngx_terminate ;

__attribute__((used)) static ngx_uint_t
ngx_reap_worker(ngx_cycle_t *cycle, HANDLE h)
{
    u_long code;
    ngx_int_t n;

    for (n = 0; n < ngx_last_process; n++) {

        if (ngx_processes[n].handle != h) {
            continue;
        }

        if (GetExitCodeProcess(h, &code) == 0) {
            ngx_log_error(NGX_LOG_ALERT, cycle->log, ngx_errno,
                          "GetExitCodeProcess(%P) failed",
                          ngx_processes[n].pid);
        }

        ngx_log_error(NGX_LOG_NOTICE, cycle->log, 0,
                      "%s process %P exited with code %Xl",
                      ngx_processes[n].name, ngx_processes[n].pid, code);

        ngx_close_handle(ngx_processes[n].reopen);
        ngx_close_handle(ngx_processes[n].quit);
        ngx_close_handle(ngx_processes[n].term);
        ngx_close_handle(h);

        ngx_processes[n].handle = ((void*)0);
        ngx_processes[n].term = ((void*)0);
        ngx_processes[n].quit = ((void*)0);
        ngx_processes[n].reopen = ((void*)0);

        if (!ngx_processes[n].exiting && !ngx_terminate && !ngx_quit) {

            if (ngx_spawn_process(cycle, ngx_processes[n].name, n)
                == NGX_INVALID_PID)
            {
                ngx_log_error(NGX_LOG_ALERT, cycle->log, 0,
                              "could not respawn %s", ngx_processes[n].name);

                if (n == ngx_last_process - 1) {
                    ngx_last_process--;
                }
            }
        }

        goto found;
    }

    ngx_log_error(NGX_LOG_ALERT, cycle->log, 0, "unknown process handle %p", h);

found:

    for (n = 0; n < ngx_last_process; n++) {

        ngx_log_debug5(NGX_LOG_DEBUG_CORE, cycle->log, 0,
                       "process: %d %P %p e:%d j:%d",
                       n,
                       ngx_processes[n].pid,
                       ngx_processes[n].handle,
                       ngx_processes[n].exiting,
                       ngx_processes[n].just_spawn);

        if (ngx_processes[n].handle) {
            return 1;
        }
    }

    return 0;
}

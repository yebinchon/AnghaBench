
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ ngx_uint_t ;
typedef size_t ngx_int_t ;
struct TYPE_4__ {int log; } ;
typedef TYPE_1__ ngx_cycle_t ;
struct TYPE_5__ {int exiting; int quit_event; int quit; int * handle; scalar_t__ just_spawn; int pid; } ;


 int NGX_LOG_ALERT ;
 int NGX_LOG_DEBUG_CORE ;
 scalar_t__ SetEvent (int ) ;
 int ngx_errno ;
 size_t ngx_last_process ;
 int ngx_log_debug5 (int ,int ,int ,char*,size_t,int ,int *,int,scalar_t__) ;
 int ngx_log_error (int ,int ,int ,char*,int ) ;
 TYPE_3__* ngx_processes ;

__attribute__((used)) static void
ngx_quit_worker_processes(ngx_cycle_t *cycle, ngx_uint_t old)
{
    ngx_int_t n;

    for (n = 0; n < ngx_last_process; n++) {

        ngx_log_debug5(NGX_LOG_DEBUG_CORE, cycle->log, 0,
                       "process: %d %P %p e:%d j:%d",
                       n,
                       ngx_processes[n].pid,
                       ngx_processes[n].handle,
                       ngx_processes[n].exiting,
                       ngx_processes[n].just_spawn);

        if (old && ngx_processes[n].just_spawn) {
            ngx_processes[n].just_spawn = 0;
            continue;
        }

        if (ngx_processes[n].handle == ((void*)0)) {
            continue;
        }

        if (SetEvent(ngx_processes[n].quit) == 0) {
            ngx_log_error(NGX_LOG_ALERT, cycle->log, ngx_errno,
                          "SetEvent(\"%s\") failed",
                          ngx_processes[n].quit_event);
        }

        ngx_processes[n].exiting = 1;
    }
}

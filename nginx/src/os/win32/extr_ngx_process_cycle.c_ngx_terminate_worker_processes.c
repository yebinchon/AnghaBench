
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t ngx_int_t ;
struct TYPE_4__ {int log; } ;
typedef TYPE_1__ ngx_cycle_t ;
struct TYPE_5__ {int exiting; int * handle; int * term; int * quit; int * reopen; } ;


 int NGX_LOG_ALERT ;
 scalar_t__ TerminateProcess (int *,int ) ;
 int ngx_close_handle (int *) ;
 int ngx_errno ;
 size_t ngx_last_process ;
 int ngx_log_error (int ,int ,int ,char*,int *) ;
 TYPE_3__* ngx_processes ;

__attribute__((used)) static void
ngx_terminate_worker_processes(ngx_cycle_t *cycle)
{
    ngx_int_t n;

    for (n = 0; n < ngx_last_process; n++) {

        if (ngx_processes[n].handle == ((void*)0)) {
            continue;
        }

        if (TerminateProcess(ngx_processes[n].handle, 0) == 0) {
            ngx_log_error(NGX_LOG_ALERT, cycle->log, ngx_errno,
                          "TerminateProcess(\"%p\") failed",
                          ngx_processes[n].handle);
        }

        ngx_processes[n].exiting = 1;

        ngx_close_handle(ngx_processes[n].reopen);
        ngx_close_handle(ngx_processes[n].quit);
        ngx_close_handle(ngx_processes[n].term);
        ngx_close_handle(ngx_processes[n].handle);
    }
}

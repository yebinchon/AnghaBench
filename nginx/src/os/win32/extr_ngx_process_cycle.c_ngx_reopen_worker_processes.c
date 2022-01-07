
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t ngx_int_t ;
struct TYPE_4__ {int log; } ;
typedef TYPE_1__ ngx_cycle_t ;
struct TYPE_5__ {int reopen_event; int reopen; int * handle; } ;


 int NGX_LOG_ALERT ;
 scalar_t__ SetEvent (int ) ;
 int ngx_errno ;
 size_t ngx_last_process ;
 int ngx_log_error (int ,int ,int ,char*,int ) ;
 TYPE_3__* ngx_processes ;

__attribute__((used)) static void
ngx_reopen_worker_processes(ngx_cycle_t *cycle)
{
    ngx_int_t n;

    for (n = 0; n < ngx_last_process; n++) {

        if (ngx_processes[n].handle == ((void*)0)) {
            continue;
        }

        if (SetEvent(ngx_processes[n].reopen) == 0) {
            ngx_log_error(NGX_LOG_ALERT, cycle->log, ngx_errno,
                          "SetEvent(\"%s\") failed",
                          ngx_processes[n].reopen_event);
        }
    }
}

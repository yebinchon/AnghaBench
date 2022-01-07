
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
typedef int ngx_pid_t ;
typedef int ngx_int_t ;
struct TYPE_3__ {int log; } ;
typedef TYPE_1__ ngx_cycle_t ;
typedef int * HANDLE ;


 int EVENT_MODIFY_STATE ;
 int NGX_LOG_ALERT ;
 int NGX_LOG_ERR ;
 int NGX_PROCESS_SYNC_NAME ;
 int * OpenEvent (int ,int ,char*) ;
 scalar_t__ SetEvent (int *) ;
 int ngx_close_handle (int *) ;
 int ngx_errno ;
 int ngx_log_error (int ,int ,int ,char*,char*) ;
 int ngx_sprintf (int *,char*,char*,int ) ;

ngx_int_t
ngx_os_signal_process(ngx_cycle_t *cycle, char *sig, ngx_pid_t pid)
{
    HANDLE ev;
    ngx_int_t rc;
    char evn[NGX_PROCESS_SYNC_NAME];

    ngx_sprintf((u_char *) evn, "Global\\ngx_%s_%P%Z", sig, pid);

    ev = OpenEvent(EVENT_MODIFY_STATE, 0, evn);
    if (ev == ((void*)0)) {
        ngx_log_error(NGX_LOG_ERR, cycle->log, ngx_errno,
                      "OpenEvent(\"%s\") failed", evn);
        return 1;
    }

    if (SetEvent(ev) == 0) {
        ngx_log_error(NGX_LOG_ALERT, cycle->log, ngx_errno,
                      "SetEvent(\"%s\") failed", evn);
        rc = 1;

    } else {
        rc = 0;
    }

    ngx_close_handle(ev);

    return rc;
}

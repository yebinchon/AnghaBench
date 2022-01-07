
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int log; } ;
typedef int HANDLE ;


 scalar_t__ CloseHandle (int ) ;
 int NGX_LOG_ALERT ;
 TYPE_1__* ngx_cycle ;
 int ngx_errno ;
 int ngx_log_error (int ,int ,int ,char*,int ) ;

void
ngx_close_handle(HANDLE h)
{
    if (CloseHandle(h) == 0) {
        ngx_log_error(NGX_LOG_ALERT, ngx_cycle->log, ngx_errno,
                      "CloseHandle(%p) failed", h);
    }
}

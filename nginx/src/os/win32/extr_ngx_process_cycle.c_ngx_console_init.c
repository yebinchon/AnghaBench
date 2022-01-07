
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int log; int conf_ctx; } ;
typedef TYPE_1__ ngx_cycle_t ;
struct TYPE_5__ {scalar_t__ daemon; } ;
typedef TYPE_2__ ngx_core_conf_t ;


 scalar_t__ FreeConsole () ;
 int NGX_LOG_ALERT ;
 scalar_t__ SetConsoleCtrlHandler (int ,int) ;
 int ngx_console_handler ;
 int ngx_core_module ;
 int ngx_errno ;
 scalar_t__ ngx_get_conf (int ,int ) ;
 int ngx_log_error (int ,int ,int ,char*) ;

__attribute__((used)) static void
ngx_console_init(ngx_cycle_t *cycle)
{
    ngx_core_conf_t *ccf;

    ccf = (ngx_core_conf_t *) ngx_get_conf(cycle->conf_ctx, ngx_core_module);

    if (ccf->daemon) {
        if (FreeConsole() == 0) {
            ngx_log_error(NGX_LOG_ALERT, cycle->log, ngx_errno,
                          "FreeConsole() failed");
        }

        return;
    }

    if (SetConsoleCtrlHandler(ngx_console_handler, 1) == 0) {
        ngx_log_error(NGX_LOG_ALERT, cycle->log, ngx_errno,
                      "SetConsoleCtrlHandler() failed");
    }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ ngx_int_t ;
struct TYPE_5__ {int conf_ctx; int log; } ;
typedef TYPE_1__ ngx_cycle_t ;
struct TYPE_6__ {scalar_t__ worker_processes; } ;
typedef TYPE_2__ ngx_core_conf_t ;


 scalar_t__ NGX_INVALID_PID ;
 int NGX_LOG_NOTICE ;
 int ngx_core_module ;
 scalar_t__ ngx_get_conf (int ,int ) ;
 int ngx_log_error (int ,int ,int ,char*) ;
 scalar_t__ ngx_spawn_process (TYPE_1__*,char*,scalar_t__) ;

__attribute__((used)) static ngx_int_t
ngx_start_worker_processes(ngx_cycle_t *cycle, ngx_int_t type)
{
    ngx_int_t n;
    ngx_core_conf_t *ccf;

    ngx_log_error(NGX_LOG_NOTICE, cycle->log, 0, "start worker processes");

    ccf = (ngx_core_conf_t *) ngx_get_conf(cycle->conf_ctx, ngx_core_module);

    for (n = 0; n < ccf->worker_processes; n++) {
        if (ngx_spawn_process(cycle, "worker", type) == NGX_INVALID_PID) {
            break;
        }
    }

    return n;
}

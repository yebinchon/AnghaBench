
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t ngx_uint_t ;
struct TYPE_7__ {int pool; TYPE_1__** modules; int log; } ;
typedef TYPE_2__ ngx_cycle_t ;
struct TYPE_6__ {int (* exit_master ) (TYPE_2__*) ;} ;


 int NGX_LOG_NOTICE ;
 int exit (int ) ;
 int ngx_cache_manager_mutex ;
 int ngx_close_handle (int ) ;
 int ngx_delete_pidfile (TYPE_2__*) ;
 int ngx_destroy_pool (int ) ;
 int ngx_log_error (int ,int ,int ,char*) ;
 int ngx_master_process_event ;
 int ngx_quit_event ;
 int ngx_reload_event ;
 int ngx_reopen_event ;
 int ngx_stop_event ;
 int stub1 (TYPE_2__*) ;

__attribute__((used)) static void
ngx_master_process_exit(ngx_cycle_t *cycle)
{
    ngx_uint_t i;

    ngx_delete_pidfile(cycle);

    ngx_close_handle(ngx_cache_manager_mutex);
    ngx_close_handle(ngx_stop_event);
    ngx_close_handle(ngx_quit_event);
    ngx_close_handle(ngx_reopen_event);
    ngx_close_handle(ngx_reload_event);
    ngx_close_handle(ngx_master_process_event);

    ngx_log_error(NGX_LOG_NOTICE, cycle->log, 0, "exit");

    for (i = 0; cycle->modules[i]; i++) {
        if (cycle->modules[i]->exit_master) {
            cycle->modules[i]->exit_master(cycle);
        }
    }

    ngx_destroy_pool(cycle->pool);

    exit(0);
}

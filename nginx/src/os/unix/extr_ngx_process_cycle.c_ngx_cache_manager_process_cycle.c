
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {void** data; int log; int handler; } ;
typedef TYPE_1__ ngx_event_t ;
struct TYPE_12__ {int connection_n; int log; } ;
typedef TYPE_2__ ngx_cycle_t ;
struct TYPE_13__ {int delay; int name; int handler; } ;
typedef TYPE_3__ ngx_cache_manager_ctx_t ;


 int NGX_LOG_NOTICE ;
 int NGX_PROCESS_HELPER ;
 int exit (int ) ;
 int ngx_add_timer (TYPE_1__*,int ) ;
 int ngx_close_listening_sockets (TYPE_2__*) ;
 int ngx_log_error (int ,int ,int ,char*) ;
 int ngx_memzero (TYPE_1__*,int) ;
 int ngx_process ;
 int ngx_process_events_and_timers (TYPE_2__*) ;
 scalar_t__ ngx_quit ;
 scalar_t__ ngx_reopen ;
 int ngx_reopen_files (TYPE_2__*,int) ;
 int ngx_setproctitle (int ) ;
 scalar_t__ ngx_terminate ;
 scalar_t__ ngx_use_accept_mutex ;
 int ngx_worker_process_init (TYPE_2__*,int) ;

__attribute__((used)) static void
ngx_cache_manager_process_cycle(ngx_cycle_t *cycle, void *data)
{
    ngx_cache_manager_ctx_t *ctx = data;

    void *ident[4];
    ngx_event_t ev;





    ngx_process = NGX_PROCESS_HELPER;

    ngx_close_listening_sockets(cycle);


    cycle->connection_n = 512;

    ngx_worker_process_init(cycle, -1);

    ngx_memzero(&ev, sizeof(ngx_event_t));
    ev.handler = ctx->handler;
    ev.data = ident;
    ev.log = cycle->log;
    ident[3] = (void *) -1;

    ngx_use_accept_mutex = 0;

    ngx_setproctitle(ctx->name);

    ngx_add_timer(&ev, ctx->delay);

    for ( ;; ) {

        if (ngx_terminate || ngx_quit) {
            ngx_log_error(NGX_LOG_NOTICE, cycle->log, 0, "exiting");
            exit(0);
        }

        if (ngx_reopen) {
            ngx_reopen = 0;
            ngx_log_error(NGX_LOG_NOTICE, cycle->log, 0, "reopening logs");
            ngx_reopen_files(cycle, -1);
        }

        ngx_process_events_and_timers(cycle);
    }
}

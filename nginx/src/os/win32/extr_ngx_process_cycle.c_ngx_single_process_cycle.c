
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int ngx_tid_t ;
struct TYPE_5__ {int log; } ;
typedef TYPE_1__ ngx_cycle_t ;


 int INFINITE ;
 scalar_t__ NGX_OK ;
 int WaitForSingleObject (int ,int ) ;
 int exit (int) ;
 int ngx_console_init (TYPE_1__*) ;
 scalar_t__ ngx_create_signal_events (TYPE_1__*) ;
 scalar_t__ ngx_create_thread (int *,int ,int *,int ) ;
 int ngx_stop_event ;
 int ngx_worker_thread ;

void
ngx_single_process_cycle(ngx_cycle_t *cycle)
{
    ngx_tid_t tid;

    ngx_console_init(cycle);

    if (ngx_create_signal_events(cycle) != NGX_OK) {
        exit(2);
    }

    if (ngx_create_thread(&tid, ngx_worker_thread, ((void*)0), cycle->log) != 0) {

        exit(2);
    }


    WaitForSingleObject(ngx_stop_event, INFINITE);
}

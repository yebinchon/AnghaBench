
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ ngx_msec_t ;
struct TYPE_6__ {int threads; } ;
typedef TYPE_1__ ngx_iocp_conf_t ;
typedef int ngx_int_t ;
struct TYPE_7__ {int log; int conf_ctx; } ;
typedef TYPE_2__ ngx_cycle_t ;
struct TYPE_8__ {int actions; } ;


 int * CreateIoCompletionPort (int ,int *,int ,int ) ;
 int INVALID_HANDLE_VALUE ;
 int NGX_ERROR ;
 int NGX_LOG_ALERT ;
 int NGX_OK ;
 int NGX_USE_IOCP_EVENT ;
 int NGX_USE_TIMER_EVENT ;
 int * iocp ;
 scalar_t__ msec ;
 scalar_t__ ngx_create_thread (int **,int ,scalar_t__*,int ) ;
 int ngx_errno ;
 int ngx_event_actions ;
 int ngx_event_flags ;
 TYPE_1__* ngx_event_get_conf (int ,int ) ;
 int ngx_io ;
 int ngx_iocp_io ;
 int ngx_iocp_module ;
 TYPE_3__ ngx_iocp_module_ctx ;
 int ngx_iocp_timer ;
 int ngx_log_error (int ,int ,int ,char*) ;
 int * timer_thread ;

__attribute__((used)) static ngx_int_t
ngx_iocp_init(ngx_cycle_t *cycle, ngx_msec_t timer)
{
    ngx_iocp_conf_t *cf;

    cf = ngx_event_get_conf(cycle->conf_ctx, ngx_iocp_module);

    if (iocp == ((void*)0)) {
        iocp = CreateIoCompletionPort(INVALID_HANDLE_VALUE, ((void*)0), 0,
                                      cf->threads);
    }

    if (iocp == ((void*)0)) {
        ngx_log_error(NGX_LOG_ALERT, cycle->log, ngx_errno,
                      "CreateIoCompletionPort() failed");
        return NGX_ERROR;
    }

    ngx_io = ngx_iocp_io;

    ngx_event_actions = ngx_iocp_module_ctx.actions;

    ngx_event_flags = NGX_USE_IOCP_EVENT;

    if (timer == 0) {
        return NGX_OK;
    }






    if (timer_thread == ((void*)0)) {

        msec = timer;

        if (ngx_create_thread(&timer_thread, ngx_iocp_timer, &msec, cycle->log)
            != 0)
        {
            return NGX_ERROR;
        }
    }

    ngx_event_flags |= NGX_USE_TIMER_EVENT;

    return NGX_OK;
}

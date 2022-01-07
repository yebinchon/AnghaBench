
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
typedef int ngx_int_t ;
struct TYPE_3__ {int log; } ;
typedef TYPE_1__ ngx_cycle_t ;


 void* CreateEvent (int *,int,int ,scalar_t__) ;
 int NGX_ERROR ;
 int NGX_LOG_ALERT ;
 int NGX_OK ;
 int ngx_errno ;
 int ngx_log_error (int ,int ,int ,char*,scalar_t__) ;
 int * ngx_quit_event ;
 scalar_t__ ngx_quit_event_name ;
 int * ngx_reload_event ;
 scalar_t__ ngx_reload_event_name ;
 int * ngx_reopen_event ;
 scalar_t__ ngx_reopen_event_name ;
 int ngx_sprintf (int *,char*,int ) ;
 int * ngx_stop_event ;
 scalar_t__ ngx_stop_event_name ;
 int ngx_unique ;

__attribute__((used)) static ngx_int_t
ngx_create_signal_events(ngx_cycle_t *cycle)
{
    ngx_sprintf((u_char *) ngx_stop_event_name,
                "Global\\ngx_stop_%s%Z", ngx_unique);

    ngx_stop_event = CreateEvent(((void*)0), 1, 0, ngx_stop_event_name);
    if (ngx_stop_event == ((void*)0)) {
        ngx_log_error(NGX_LOG_ALERT, cycle->log, ngx_errno,
                      "CreateEvent(\"%s\") failed", ngx_stop_event_name);
        return NGX_ERROR;
    }


    ngx_sprintf((u_char *) ngx_quit_event_name,
                "Global\\ngx_quit_%s%Z", ngx_unique);

    ngx_quit_event = CreateEvent(((void*)0), 1, 0, ngx_quit_event_name);
    if (ngx_quit_event == ((void*)0)) {
        ngx_log_error(NGX_LOG_ALERT, cycle->log, ngx_errno,
                      "CreateEvent(\"%s\") failed", ngx_quit_event_name);
        return NGX_ERROR;
    }


    ngx_sprintf((u_char *) ngx_reopen_event_name,
                "Global\\ngx_reopen_%s%Z", ngx_unique);

    ngx_reopen_event = CreateEvent(((void*)0), 1, 0, ngx_reopen_event_name);
    if (ngx_reopen_event == ((void*)0)) {
        ngx_log_error(NGX_LOG_ALERT, cycle->log, ngx_errno,
                      "CreateEvent(\"%s\") failed", ngx_reopen_event_name);
        return NGX_ERROR;
    }


    ngx_sprintf((u_char *) ngx_reload_event_name,
                "Global\\ngx_reload_%s%Z", ngx_unique);

    ngx_reload_event = CreateEvent(((void*)0), 1, 0, ngx_reload_event_name);
    if (ngx_reload_event == ((void*)0)) {
        ngx_log_error(NGX_LOG_ALERT, cycle->log, ngx_errno,
                      "CreateEvent(\"%s\") failed", ngx_reload_event_name);
        return NGX_ERROR;
    }

    return NGX_OK;
}

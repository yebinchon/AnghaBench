
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {struct sigevent* sival_ptr; } ;
struct sigevent {int portnfy_port; TYPE_1__ sigev_value; int sigev_notify; } ;
struct TYPE_12__ {int tv_sec; int tv_nsec; } ;
struct TYPE_11__ {int tv_sec; int tv_nsec; } ;
struct itimerspec {TYPE_3__ it_value; TYPE_2__ it_interval; } ;
typedef struct sigevent port_notify_t ;
typedef int port_event_t ;
typedef int ngx_msec_t ;
typedef int ngx_int_t ;
struct TYPE_13__ {int events; } ;
typedef TYPE_4__ ngx_eventport_conf_t ;
struct TYPE_14__ {int log; int conf_ctx; } ;
typedef TYPE_5__ ngx_cycle_t ;
struct TYPE_16__ {int actions; } ;
struct TYPE_15__ {int active; int log; } ;


 int CLOCK_REALTIME ;
 int NGX_ERROR ;
 int NGX_LOG_EMERG ;
 int NGX_OK ;
 int NGX_USE_EVENTPORT_EVENT ;
 int NGX_USE_TIMER_EVENT ;
 int SIGEV_PORT ;
 int ep ;
 int * event_list ;
 int event_timer ;
 int nevents ;
 int * ngx_alloc (int,int ) ;
 int ngx_errno ;
 int ngx_event_actions ;
 int ngx_event_flags ;
 TYPE_4__* ngx_event_get_conf (int ,int ) ;
 int ngx_eventport_module ;
 TYPE_7__ ngx_eventport_module_ctx ;
 int ngx_free (int *) ;
 int ngx_io ;
 int ngx_log_error (int ,int ,int ,char*) ;
 int ngx_memzero (struct sigevent*,int) ;
 int ngx_os_io ;
 TYPE_6__ notify_event ;
 int port_create () ;
 int timer_create (int ,struct sigevent*,int *) ;
 int timer_settime (int ,int ,struct itimerspec*,int *) ;

__attribute__((used)) static ngx_int_t
ngx_eventport_init(ngx_cycle_t *cycle, ngx_msec_t timer)
{
    port_notify_t pn;
    struct itimerspec its;
    struct sigevent sev;
    ngx_eventport_conf_t *epcf;

    epcf = ngx_event_get_conf(cycle->conf_ctx, ngx_eventport_module);

    if (ep == -1) {
        ep = port_create();

        if (ep == -1) {
            ngx_log_error(NGX_LOG_EMERG, cycle->log, ngx_errno,
                          "port_create() failed");
            return NGX_ERROR;
        }

        notify_event.active = 1;
        notify_event.log = cycle->log;
    }

    if (nevents < epcf->events) {
        if (event_list) {
            ngx_free(event_list);
        }

        event_list = ngx_alloc(sizeof(port_event_t) * epcf->events,
                               cycle->log);
        if (event_list == ((void*)0)) {
            return NGX_ERROR;
        }
    }

    ngx_event_flags = NGX_USE_EVENTPORT_EVENT;

    if (timer) {
        ngx_memzero(&pn, sizeof(port_notify_t));
        pn.portnfy_port = ep;

        ngx_memzero(&sev, sizeof(struct sigevent));
        sev.sigev_notify = SIGEV_PORT;
        sev.sigev_value.sival_ptr = &pn;

        if (timer_create(CLOCK_REALTIME, &sev, &event_timer) == -1) {
            ngx_log_error(NGX_LOG_EMERG, cycle->log, ngx_errno,
                          "timer_create() failed");
            return NGX_ERROR;
        }

        its.it_interval.tv_sec = timer / 1000;
        its.it_interval.tv_nsec = (timer % 1000) * 1000000;
        its.it_value.tv_sec = timer / 1000;
        its.it_value.tv_nsec = (timer % 1000) * 1000000;

        if (timer_settime(event_timer, 0, &its, ((void*)0)) == -1) {
            ngx_log_error(NGX_LOG_EMERG, cycle->log, ngx_errno,
                          "timer_settime() failed");
            return NGX_ERROR;
        }

        ngx_event_flags |= NGX_USE_TIMER_EVENT;
    }

    nevents = epcf->events;

    ngx_io = ngx_os_io;

    ngx_event_actions = ngx_eventport_module_ctx.actions;

    return NGX_OK;
}

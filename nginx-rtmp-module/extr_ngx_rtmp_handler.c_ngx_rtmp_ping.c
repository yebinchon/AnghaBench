
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_14__ {int ping_active; TYPE_1__* connection; scalar_t__ ping_reset; } ;
typedef TYPE_2__ ngx_rtmp_session_t ;
struct TYPE_15__ {int ping_timeout; scalar_t__ busy; } ;
typedef TYPE_3__ ngx_rtmp_core_srv_conf_t ;
struct TYPE_16__ {TYPE_5__* data; } ;
typedef TYPE_4__ ngx_event_t ;
struct TYPE_17__ {int log; TYPE_2__* data; } ;
typedef TYPE_5__ ngx_connection_t ;
struct TYPE_13__ {int log; } ;


 int NGX_LOG_DEBUG_RTMP ;
 int NGX_LOG_INFO ;
 scalar_t__ NGX_OK ;
 int ngx_add_timer (TYPE_4__*,int ) ;
 scalar_t__ ngx_current_msec ;
 int ngx_log_debug1 (int ,int ,int ,char*,int ) ;
 int ngx_log_error (int ,int ,int ,char*) ;
 int ngx_rtmp_core_module ;
 int ngx_rtmp_finalize_session (TYPE_2__*) ;
 TYPE_3__* ngx_rtmp_get_module_srv_conf (TYPE_2__*,int ) ;
 int ngx_rtmp_reset_ping (TYPE_2__*) ;
 scalar_t__ ngx_rtmp_send_ping_request (TYPE_2__*,int ) ;

__attribute__((used)) static void
ngx_rtmp_ping(ngx_event_t *pev)
{
    ngx_connection_t *c;
    ngx_rtmp_session_t *s;
    ngx_rtmp_core_srv_conf_t *cscf;

    c = pev->data;
    s = c->data;

    cscf = ngx_rtmp_get_module_srv_conf(s, ngx_rtmp_core_module);


    if (s->ping_reset) {
        ngx_rtmp_reset_ping(s);
        return;
    }

    if (s->ping_active) {
        ngx_log_error(NGX_LOG_INFO, c->log, 0,
                "ping: unresponded");
        ngx_rtmp_finalize_session(s);
        return;
    }

    if (cscf->busy) {
        ngx_log_error(NGX_LOG_INFO, c->log, 0,
                "ping: not busy between pings");
        ngx_rtmp_finalize_session(s);
        return;
    }

    ngx_log_debug1(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
            "ping: schedule %Mms", cscf->ping_timeout);

    if (ngx_rtmp_send_ping_request(s, (uint32_t)ngx_current_msec) != NGX_OK) {
        ngx_rtmp_finalize_session(s);
        return;
    }

    s->ping_active = 1;
    ngx_add_timer(pev, cscf->ping_timeout);
}

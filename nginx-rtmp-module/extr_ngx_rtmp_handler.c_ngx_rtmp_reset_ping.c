
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* connection; int ping_evt; scalar_t__ ping_reset; scalar_t__ ping_active; } ;
typedef TYPE_2__ ngx_rtmp_session_t ;
struct TYPE_9__ {scalar_t__ ping; } ;
typedef TYPE_3__ ngx_rtmp_core_srv_conf_t ;
struct TYPE_7__ {int log; } ;


 int NGX_LOG_DEBUG_RTMP ;
 int ngx_add_timer (int *,scalar_t__) ;
 int ngx_log_debug1 (int ,int ,int ,char*,scalar_t__) ;
 int ngx_rtmp_core_module ;
 TYPE_3__* ngx_rtmp_get_module_srv_conf (TYPE_2__*,int ) ;

void
ngx_rtmp_reset_ping(ngx_rtmp_session_t *s)
{
    ngx_rtmp_core_srv_conf_t *cscf;

    cscf = ngx_rtmp_get_module_srv_conf(s, ngx_rtmp_core_module);
    if (cscf->ping == 0) {
        return;
    }

    s->ping_active = 0;
    s->ping_reset = 0;
    ngx_add_timer(&s->ping_evt, cscf->ping);

    ngx_log_debug1(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
            "ping: wait %Mms", cscf->ping);
}

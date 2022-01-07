
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ngx_str_t ;
struct TYPE_5__ {int main_conf; int srv_conf; int app_conf; } ;
typedef TYPE_1__ ngx_rtmp_session_t ;
typedef int ngx_rtmp_relay_target_t ;
typedef int ngx_rtmp_relay_ctx_t ;
struct TYPE_6__ {int main_conf; int srv_conf; int app_conf; } ;
typedef TYPE_2__ ngx_rtmp_conf_ctx_t ;


 int * ngx_rtmp_relay_create_connection (TYPE_2__*,int *,int *) ;

__attribute__((used)) static ngx_rtmp_relay_ctx_t *
ngx_rtmp_relay_create_remote_ctx(ngx_rtmp_session_t *s, ngx_str_t* name,
        ngx_rtmp_relay_target_t *target)
{
    ngx_rtmp_conf_ctx_t cctx;

    cctx.app_conf = s->app_conf;
    cctx.srv_conf = s->srv_conf;
    cctx.main_conf = s->main_conf;

    return ngx_rtmp_relay_create_connection(&cctx, name, target);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int stat; } ;
typedef TYPE_1__ ngx_rtmp_stat_loc_conf_t ;
struct TYPE_8__ {int * app_conf; int name; } ;
typedef TYPE_2__ ngx_rtmp_core_app_conf_t ;
typedef int ngx_http_request_t ;
typedef int ngx_chain_t ;
struct TYPE_10__ {size_t ctx_index; } ;
struct TYPE_9__ {size_t ctx_index; } ;


 int NGX_RTMP_STAT_ES (int *) ;
 int NGX_RTMP_STAT_L (char*) ;
 int NGX_RTMP_STAT_LIVE ;
 int NGX_RTMP_STAT_PLAY ;
 TYPE_1__* ngx_http_get_module_loc_conf (int *,int ) ;
 TYPE_5__ ngx_rtmp_live_module ;
 TYPE_4__ ngx_rtmp_play_module ;
 int ngx_rtmp_stat_live (int *,int ***,int ) ;
 int ngx_rtmp_stat_module ;
 int ngx_rtmp_stat_play (int *,int ***,int ) ;

__attribute__((used)) static void
ngx_rtmp_stat_application(ngx_http_request_t *r, ngx_chain_t ***lll,
        ngx_rtmp_core_app_conf_t *cacf)
{
    ngx_rtmp_stat_loc_conf_t *slcf;

    NGX_RTMP_STAT_L("<application>\r\n");
    NGX_RTMP_STAT_L("<name>");
    NGX_RTMP_STAT_ES(&cacf->name);
    NGX_RTMP_STAT_L("</name>\r\n");

    slcf = ngx_http_get_module_loc_conf(r, ngx_rtmp_stat_module);

    if (slcf->stat & NGX_RTMP_STAT_LIVE) {
        ngx_rtmp_stat_live(r, lll,
                cacf->app_conf[ngx_rtmp_live_module.ctx_index]);
    }

    if (slcf->stat & NGX_RTMP_STAT_PLAY) {
        ngx_rtmp_stat_play(r, lll,
                cacf->app_conf[ngx_rtmp_play_module.ctx_index]);
    }

    NGX_RTMP_STAT_L("</application>\r\n");
}

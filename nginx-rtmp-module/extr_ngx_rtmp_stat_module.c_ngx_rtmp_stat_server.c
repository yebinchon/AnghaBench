
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t nelts; int ** elts; } ;
struct TYPE_5__ {TYPE_1__ applications; int pool; } ;
typedef TYPE_2__ ngx_rtmp_core_srv_conf_t ;
typedef int ngx_rtmp_core_app_conf_t ;
typedef int ngx_http_request_t ;
typedef int ngx_chain_t ;


 int NGX_RTMP_STAT_L (char*) ;
 int ngx_rtmp_stat_application (int *,int ***,int *) ;
 int ngx_rtmp_stat_dump_pool (int *,int ***,int ) ;

__attribute__((used)) static void
ngx_rtmp_stat_server(ngx_http_request_t *r, ngx_chain_t ***lll,
        ngx_rtmp_core_srv_conf_t *cscf)
{
    ngx_rtmp_core_app_conf_t **cacf;
    size_t n;

    NGX_RTMP_STAT_L("<server>\r\n");





    cacf = cscf->applications.elts;
    for (n = 0; n < cscf->applications.nelts; ++n, ++cacf) {
        ngx_rtmp_stat_application(r, lll, *cacf);
    }

    NGX_RTMP_STAT_L("</server>\r\n");
}

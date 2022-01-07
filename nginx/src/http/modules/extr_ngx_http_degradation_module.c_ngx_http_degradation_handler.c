
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ ngx_int_t ;
typedef int ngx_http_request_t ;
struct TYPE_3__ {scalar_t__ degrade; } ;
typedef TYPE_1__ ngx_http_degradation_loc_conf_t ;


 scalar_t__ NGX_DECLINED ;
 int ngx_http_degradation_module ;
 scalar_t__ ngx_http_degraded (int *) ;
 TYPE_1__* ngx_http_get_module_loc_conf (int *,int ) ;

__attribute__((used)) static ngx_int_t
ngx_http_degradation_handler(ngx_http_request_t *r)
{
    ngx_http_degradation_loc_conf_t *dlcf;

    dlcf = ngx_http_get_module_loc_conf(r, ngx_http_degradation_module);

    if (dlcf->degrade && ngx_http_degraded(r)) {
        return dlcf->degrade;
    }

    return NGX_DECLINED;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rules6; int rules; } ;
typedef TYPE_1__ ngx_rtmp_access_app_conf_t ;
typedef int ngx_conf_t ;


 char* NGX_CONF_ERROR ;
 char* NGX_CONF_OK ;
 scalar_t__ NGX_OK ;
 scalar_t__ ngx_rtmp_access_merge_rules (int *,int *) ;

__attribute__((used)) static char *
ngx_rtmp_access_merge_app_conf(ngx_conf_t *cf, void *parent, void *child)
{
    ngx_rtmp_access_app_conf_t *prev = parent;
    ngx_rtmp_access_app_conf_t *conf = child;

    if (ngx_rtmp_access_merge_rules(&prev->rules, &conf->rules) != NGX_OK) {
        return NGX_CONF_ERROR;
    }







    return NGX_CONF_OK;
}

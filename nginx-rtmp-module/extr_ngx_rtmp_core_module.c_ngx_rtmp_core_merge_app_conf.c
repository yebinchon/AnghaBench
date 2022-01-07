
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ngx_rtmp_core_app_conf_t ;
typedef int ngx_conf_t ;


 char* NGX_CONF_OK ;

__attribute__((used)) static char *
ngx_rtmp_core_merge_app_conf(ngx_conf_t *cf, void *parent, void *child)
{
    ngx_rtmp_core_app_conf_t *prev = parent;
    ngx_rtmp_core_app_conf_t *conf = child;

    (void)prev;
    (void)conf;

    return NGX_CONF_OK;
}

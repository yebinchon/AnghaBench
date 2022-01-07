
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bufsize; int timeout; } ;
typedef TYPE_1__ ngx_rtmp_netcall_srv_conf_t ;
typedef int ngx_conf_t ;


 char* NGX_CONF_OK ;
 int ngx_conf_merge_msec_value (int ,int ,int) ;
 int ngx_conf_merge_size_value (int ,int ,int) ;

__attribute__((used)) static char *
ngx_rtmp_netcall_merge_srv_conf(ngx_conf_t *cf, void *parent, void *child)
{
    ngx_rtmp_netcall_srv_conf_t *prev = parent;
    ngx_rtmp_netcall_srv_conf_t *conf = child;

    ngx_conf_merge_msec_value(conf->timeout, prev->timeout, 10000);
    ngx_conf_merge_size_value(conf->bufsize, prev->bufsize, 1024);

    return NGX_CONF_OK;
}

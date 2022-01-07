
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t ngx_uint_t ;
struct TYPE_2__ {int method; int * url; } ;
typedef TYPE_1__ ngx_rtmp_notify_srv_conf_t ;
typedef int ngx_conf_t ;


 char* NGX_CONF_OK ;
 int NGX_RTMP_NETCALL_HTTP_POST ;
 size_t NGX_RTMP_NOTIFY_SRV_MAX ;
 int ngx_conf_merge_ptr_value (int ,int ,int *) ;
 int ngx_conf_merge_uint_value (int ,int ,int ) ;

__attribute__((used)) static char *
ngx_rtmp_notify_merge_srv_conf(ngx_conf_t *cf, void *parent, void *child)
{
    ngx_rtmp_notify_srv_conf_t *prev = parent;
    ngx_rtmp_notify_srv_conf_t *conf = child;
    ngx_uint_t n;

    for (n = 0; n < NGX_RTMP_NOTIFY_SRV_MAX; ++n) {
        ngx_conf_merge_ptr_value(conf->url[n], prev->url[n], ((void*)0));
    }

    ngx_conf_merge_uint_value(conf->method, prev->method,
                              NGX_RTMP_NETCALL_HTTP_POST);

    return NGX_CONF_OK;
}

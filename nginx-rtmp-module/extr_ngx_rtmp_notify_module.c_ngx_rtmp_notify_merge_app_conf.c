
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t ngx_uint_t ;
struct TYPE_2__ {int active; int relay_redirect; int update_strict; int update_timeout; int method; scalar_t__* url; } ;
typedef TYPE_1__ ngx_rtmp_notify_app_conf_t ;
typedef int ngx_conf_t ;


 char* NGX_CONF_OK ;
 int NGX_RTMP_NETCALL_HTTP_POST ;
 size_t NGX_RTMP_NOTIFY_APP_MAX ;
 int ngx_conf_merge_msec_value (int ,int ,int) ;
 int ngx_conf_merge_ptr_value (scalar_t__,scalar_t__,int *) ;
 int ngx_conf_merge_uint_value (int ,int ,int ) ;
 int ngx_conf_merge_value (int ,int ,int ) ;

__attribute__((used)) static char *
ngx_rtmp_notify_merge_app_conf(ngx_conf_t *cf, void *parent, void *child)
{
    ngx_rtmp_notify_app_conf_t *prev = parent;
    ngx_rtmp_notify_app_conf_t *conf = child;
    ngx_uint_t n;

    for (n = 0; n < NGX_RTMP_NOTIFY_APP_MAX; ++n) {
        ngx_conf_merge_ptr_value(conf->url[n], prev->url[n], ((void*)0));
        if (conf->url[n]) {
            conf->active = 1;
        }
    }

    if (conf->active) {
        prev->active = 1;
    }

    ngx_conf_merge_uint_value(conf->method, prev->method,
                              NGX_RTMP_NETCALL_HTTP_POST);
    ngx_conf_merge_msec_value(conf->update_timeout, prev->update_timeout,
                              30000);
    ngx_conf_merge_value(conf->update_strict, prev->update_strict, 0);
    ngx_conf_merge_value(conf->relay_redirect, prev->relay_redirect, 0);

    return NGX_CONF_OK;
}

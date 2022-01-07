
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_10__ {int len; int data; } ;
typedef TYPE_2__ ngx_str_t ;
struct TYPE_11__ {int method; } ;
typedef TYPE_3__ ngx_rtmp_notify_srv_conf_t ;
struct TYPE_12__ {int method; } ;
typedef TYPE_4__ ngx_rtmp_notify_app_conf_t ;
struct TYPE_13__ {TYPE_1__* args; } ;
typedef TYPE_5__ ngx_conf_t ;
typedef int ngx_command_t ;
struct TYPE_9__ {TYPE_2__* elts; } ;


 char* NGX_CONF_OK ;
 int NGX_RTMP_NETCALL_HTTP_GET ;
 int NGX_RTMP_NETCALL_HTTP_POST ;
 TYPE_3__* ngx_rtmp_conf_get_module_srv_conf (TYPE_5__*,int ) ;
 int ngx_rtmp_notify_module ;
 scalar_t__ ngx_strncasecmp (int ,int *,int) ;

__attribute__((used)) static char *
ngx_rtmp_notify_method(ngx_conf_t *cf, ngx_command_t *cmd, void *conf)
{
    ngx_rtmp_notify_app_conf_t *nacf = conf;

    ngx_rtmp_notify_srv_conf_t *nscf;
    ngx_str_t *value;

    value = cf->args->elts;
    value++;

    if (value->len == sizeof("get") - 1 &&
        ngx_strncasecmp(value->data, (u_char *) "get", value->len) == 0)
    {
        nacf->method = NGX_RTMP_NETCALL_HTTP_GET;

    } else if (value->len == sizeof("post") - 1 &&
               ngx_strncasecmp(value->data, (u_char *) "post", value->len) == 0)
    {
        nacf->method = NGX_RTMP_NETCALL_HTTP_POST;

    } else {
        return "got unexpected method";
    }

    nscf = ngx_rtmp_conf_get_module_srv_conf(cf, ngx_rtmp_notify_module);
    nscf->method = nacf->method;

    return NGX_CONF_OK;
}

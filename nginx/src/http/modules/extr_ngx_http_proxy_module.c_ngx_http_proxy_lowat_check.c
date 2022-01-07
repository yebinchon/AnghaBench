
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_long ;
typedef scalar_t__ ssize_t ;
typedef int ngx_conf_t ;


 char* NGX_CONF_ERROR ;
 char* NGX_CONF_OK ;
 int NGX_LOG_EMERG ;
 int NGX_LOG_WARN ;
 int ngx_conf_log_error (int ,int *,int ,char*,...) ;
 scalar_t__ ngx_freebsd_net_inet_tcp_sendspace ;

__attribute__((used)) static char *
ngx_http_proxy_lowat_check(ngx_conf_t *cf, void *post, void *data)
{
    ssize_t *np = data;

    ngx_conf_log_error(NGX_LOG_WARN, cf, 0,
                       "\"proxy_send_lowat\" is not supported, ignored");

    *np = 0;



    return NGX_CONF_OK;
}

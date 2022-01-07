
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ngx_uint_t ;
struct TYPE_3__ {int log; int ctx; } ;
typedef TYPE_1__ ngx_ssl_t ;
typedef int ngx_int_t ;
typedef int ngx_conf_t ;


 int NGX_LOG_WARN ;
 int NGX_OK ;
 int NGX_SSL_BUFSIZE ;
 int SSL_CTX_set_early_data_enabled (int ,int) ;
 int SSL_CTX_set_max_early_data (int ,int ) ;
 int ngx_log_error (int ,int ,int ,char*) ;

ngx_int_t
ngx_ssl_early_data(ngx_conf_t *cf, ngx_ssl_t *ssl, ngx_uint_t enable)
{
    if (!enable) {
        return NGX_OK;
    }
    ngx_log_error(NGX_LOG_WARN, ssl->log, 0,
                  "\"ssl_early_data\" is not supported on this platform, "
                  "ignored");


    return NGX_OK;
}

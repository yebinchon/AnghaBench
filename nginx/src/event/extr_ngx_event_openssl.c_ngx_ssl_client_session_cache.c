
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ngx_uint_t ;
struct TYPE_3__ {int ctx; } ;
typedef TYPE_1__ ngx_ssl_t ;
typedef int ngx_int_t ;
typedef int ngx_conf_t ;


 int NGX_OK ;
 int SSL_CTX_sess_set_new_cb (int ,int ) ;
 int SSL_CTX_set_session_cache_mode (int ,int) ;
 int SSL_SESS_CACHE_CLIENT ;
 int SSL_SESS_CACHE_NO_INTERNAL ;
 int ngx_ssl_new_client_session ;

ngx_int_t
ngx_ssl_client_session_cache(ngx_conf_t *cf, ngx_ssl_t *ssl, ngx_uint_t enable)
{
    if (!enable) {
        return NGX_OK;
    }

    SSL_CTX_set_session_cache_mode(ssl->ctx,
                                   SSL_SESS_CACHE_CLIENT
                                   |SSL_SESS_CACHE_NO_INTERNAL);

    SSL_CTX_sess_set_new_cb(ssl->ctx, ngx_ssl_new_client_session);

    return NGX_OK;
}

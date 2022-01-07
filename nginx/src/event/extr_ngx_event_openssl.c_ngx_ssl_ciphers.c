
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ ngx_uint_t ;
struct TYPE_6__ {scalar_t__ data; } ;
typedef TYPE_1__ ngx_str_t ;
struct TYPE_7__ {int ctx; int log; } ;
typedef TYPE_2__ ngx_ssl_t ;
typedef int ngx_int_t ;
typedef int ngx_conf_t ;


 int NGX_ERROR ;
 int NGX_LOG_EMERG ;
 int NGX_OK ;
 scalar_t__ SSL_CTX_set_cipher_list (int ,char*) ;
 int SSL_CTX_set_options (int ,int ) ;
 int SSL_CTX_set_tmp_rsa_callback (int ,int ) ;
 int SSL_OP_CIPHER_SERVER_PREFERENCE ;
 int ngx_ssl_error (int ,int ,int ,char*,TYPE_1__*) ;
 int ngx_ssl_rsa512_key_callback ;

ngx_int_t
ngx_ssl_ciphers(ngx_conf_t *cf, ngx_ssl_t *ssl, ngx_str_t *ciphers,
    ngx_uint_t prefer_server_ciphers)
{
    if (SSL_CTX_set_cipher_list(ssl->ctx, (char *) ciphers->data) == 0) {
        ngx_ssl_error(NGX_LOG_EMERG, ssl->log, 0,
                      "SSL_CTX_set_cipher_list(\"%V\") failed",
                      ciphers);
        return NGX_ERROR;
    }

    if (prefer_server_ciphers) {
        SSL_CTX_set_options(ssl->ctx, SSL_OP_CIPHER_SERVER_PREFERENCE);
    }



    SSL_CTX_set_tmp_rsa_callback(ssl->ctx, ngx_ssl_rsa512_key_callback);


    return NGX_OK;
}

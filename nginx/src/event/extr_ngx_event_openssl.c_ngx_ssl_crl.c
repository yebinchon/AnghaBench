
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ len; scalar_t__ data; } ;
typedef TYPE_1__ ngx_str_t ;
struct TYPE_9__ {int log; int ctx; } ;
typedef TYPE_2__ ngx_ssl_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_10__ {int cycle; } ;
typedef TYPE_3__ ngx_conf_t ;
typedef int X509_STORE ;
typedef int X509_LOOKUP ;


 scalar_t__ NGX_ERROR ;
 int NGX_LOG_EMERG ;
 scalar_t__ NGX_OK ;
 int * SSL_CTX_get_cert_store (int ) ;
 int X509_FILETYPE_PEM ;
 int X509_LOOKUP_file () ;
 scalar_t__ X509_LOOKUP_load_file (int *,char*,int ) ;
 int * X509_STORE_add_lookup (int *,int ) ;
 int X509_STORE_set_flags (int *,int) ;
 int X509_V_FLAG_CRL_CHECK ;
 int X509_V_FLAG_CRL_CHECK_ALL ;
 scalar_t__ ngx_conf_full_name (int ,TYPE_1__*,int) ;
 int ngx_ssl_error (int ,int ,int ,char*,...) ;

ngx_int_t
ngx_ssl_crl(ngx_conf_t *cf, ngx_ssl_t *ssl, ngx_str_t *crl)
{
    X509_STORE *store;
    X509_LOOKUP *lookup;

    if (crl->len == 0) {
        return NGX_OK;
    }

    if (ngx_conf_full_name(cf->cycle, crl, 1) != NGX_OK) {
        return NGX_ERROR;
    }

    store = SSL_CTX_get_cert_store(ssl->ctx);

    if (store == ((void*)0)) {
        ngx_ssl_error(NGX_LOG_EMERG, ssl->log, 0,
                      "SSL_CTX_get_cert_store() failed");
        return NGX_ERROR;
    }

    lookup = X509_STORE_add_lookup(store, X509_LOOKUP_file());

    if (lookup == ((void*)0)) {
        ngx_ssl_error(NGX_LOG_EMERG, ssl->log, 0,
                      "X509_STORE_add_lookup() failed");
        return NGX_ERROR;
    }

    if (X509_LOOKUP_load_file(lookup, (char *) crl->data, X509_FILETYPE_PEM)
        == 0)
    {
        ngx_ssl_error(NGX_LOG_EMERG, ssl->log, 0,
                      "X509_LOOKUP_load_file(\"%s\") failed", crl->data);
        return NGX_ERROR;
    }

    X509_STORE_set_flags(store,
                         X509_V_FLAG_CRL_CHECK|X509_V_FLAG_CRL_CHECK_ALL);

    return NGX_OK;
}

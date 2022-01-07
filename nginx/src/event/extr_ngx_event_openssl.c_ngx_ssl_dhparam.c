
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ len; scalar_t__ data; } ;
typedef TYPE_1__ ngx_str_t ;
struct TYPE_9__ {int ctx; int log; } ;
typedef TYPE_2__ ngx_ssl_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_10__ {int cycle; } ;
typedef TYPE_3__ ngx_conf_t ;
typedef int DH ;
typedef int BIO ;


 int BIO_free (int *) ;
 int * BIO_new_file (char*,char*) ;
 int DH_free (int *) ;
 scalar_t__ NGX_ERROR ;
 int NGX_LOG_EMERG ;
 scalar_t__ NGX_OK ;
 int * PEM_read_bio_DHparams (int *,int *,int *,int *) ;
 int SSL_CTX_set_tmp_dh (int ,int *) ;
 scalar_t__ ngx_conf_full_name (int ,TYPE_1__*,int) ;
 int ngx_ssl_error (int ,int ,int ,char*,scalar_t__) ;

ngx_int_t
ngx_ssl_dhparam(ngx_conf_t *cf, ngx_ssl_t *ssl, ngx_str_t *file)
{
    DH *dh;
    BIO *bio;

    if (file->len == 0) {
        return NGX_OK;
    }

    if (ngx_conf_full_name(cf->cycle, file, 1) != NGX_OK) {
        return NGX_ERROR;
    }

    bio = BIO_new_file((char *) file->data, "r");
    if (bio == ((void*)0)) {
        ngx_ssl_error(NGX_LOG_EMERG, ssl->log, 0,
                      "BIO_new_file(\"%s\") failed", file->data);
        return NGX_ERROR;
    }

    dh = PEM_read_bio_DHparams(bio, ((void*)0), ((void*)0), ((void*)0));
    if (dh == ((void*)0)) {
        ngx_ssl_error(NGX_LOG_EMERG, ssl->log, 0,
                      "PEM_read_bio_DHparams(\"%s\") failed", file->data);
        BIO_free(bio);
        return NGX_ERROR;
    }

    SSL_CTX_set_tmp_dh(ssl->ctx, dh);

    DH_free(dh);
    BIO_free(bio);

    return NGX_OK;
}

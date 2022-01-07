
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int pem_password_cb ;
typedef int X509 ;
struct TYPE_12__ {void* default_passwd_callback_userdata; int * default_passwd_callback; } ;
struct TYPE_11__ {void* default_passwd_callback_userdata; int * default_passwd_callback; } ;
typedef TYPE_1__ SSL_CTX ;
typedef TYPE_2__ SSL ;
typedef int BIO ;


 int BIO_free (int *) ;
 int * BIO_new (int ) ;
 scalar_t__ BIO_read_filename (int *,char const*) ;
 int BIO_s_file () ;
 scalar_t__ ERR_GET_LIB (unsigned long) ;
 scalar_t__ ERR_GET_REASON (unsigned long) ;
 scalar_t__ ERR_LIB_PEM ;
 int ERR_R_BUF_LIB ;
 int ERR_R_PEM_LIB ;
 int ERR_R_SYS_LIB ;
 int ERR_clear_error () ;
 scalar_t__ ERR_peek_error () ;
 unsigned long ERR_peek_last_error () ;
 scalar_t__ PEM_R_NO_START_LINE ;
 int * PEM_read_bio_X509 (int *,int *,int *,void*) ;
 int * PEM_read_bio_X509_AUX (int *,int *,int *,void*) ;
 int SSL_CTX_add0_chain_cert (TYPE_1__*,int *) ;
 int SSL_CTX_clear_chain_certs (TYPE_1__*) ;
 int SSL_CTX_use_certificate (TYPE_1__*,int *) ;
 int SSL_F_USE_CERTIFICATE_CHAIN_FILE ;
 int SSL_add0_chain_cert (TYPE_2__*,int *) ;
 int SSL_clear_chain_certs (TYPE_2__*) ;
 int SSL_use_certificate (TYPE_2__*,int *) ;
 int SSLerr (int ,int ) ;
 int X509_free (int *) ;

__attribute__((used)) static int use_certificate_chain_file(SSL_CTX *ctx, SSL *ssl, const char *file)
{
    BIO *in;
    int ret = 0;
    X509 *x = ((void*)0);
    pem_password_cb *passwd_callback;
    void *passwd_callback_userdata;

    ERR_clear_error();


    if (ctx != ((void*)0)) {
        passwd_callback = ctx->default_passwd_callback;
        passwd_callback_userdata = ctx->default_passwd_callback_userdata;
    } else {
        passwd_callback = ssl->default_passwd_callback;
        passwd_callback_userdata = ssl->default_passwd_callback_userdata;
    }

    in = BIO_new(BIO_s_file());
    if (in == ((void*)0)) {
        SSLerr(SSL_F_USE_CERTIFICATE_CHAIN_FILE, ERR_R_BUF_LIB);
        goto end;
    }

    if (BIO_read_filename(in, file) <= 0) {
        SSLerr(SSL_F_USE_CERTIFICATE_CHAIN_FILE, ERR_R_SYS_LIB);
        goto end;
    }

    x = PEM_read_bio_X509_AUX(in, ((void*)0), passwd_callback,
                              passwd_callback_userdata);
    if (x == ((void*)0)) {
        SSLerr(SSL_F_USE_CERTIFICATE_CHAIN_FILE, ERR_R_PEM_LIB);
        goto end;
    }

    if (ctx)
        ret = SSL_CTX_use_certificate(ctx, x);
    else
        ret = SSL_use_certificate(ssl, x);

    if (ERR_peek_error() != 0)
        ret = 0;

    if (ret) {




        X509 *ca;
        int r;
        unsigned long err;

        if (ctx)
            r = SSL_CTX_clear_chain_certs(ctx);
        else
            r = SSL_clear_chain_certs(ssl);

        if (r == 0) {
            ret = 0;
            goto end;
        }

        while ((ca = PEM_read_bio_X509(in, ((void*)0), passwd_callback,
                                       passwd_callback_userdata))
               != ((void*)0)) {
            if (ctx)
                r = SSL_CTX_add0_chain_cert(ctx, ca);
            else
                r = SSL_add0_chain_cert(ssl, ca);





            if (!r) {
                X509_free(ca);
                ret = 0;
                goto end;
            }
        }

        err = ERR_peek_last_error();
        if (ERR_GET_LIB(err) == ERR_LIB_PEM
            && ERR_GET_REASON(err) == PEM_R_NO_START_LINE)
            ERR_clear_error();
        else
            ret = 0;
    }

 end:
    X509_free(x);
    BIO_free(in);
    return ret;
}

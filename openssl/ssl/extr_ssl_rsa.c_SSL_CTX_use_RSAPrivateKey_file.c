
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int default_passwd_callback_userdata; int default_passwd_callback; } ;
typedef TYPE_1__ SSL_CTX ;
typedef int RSA ;
typedef int BIO ;


 int BIO_free (int *) ;
 int * BIO_new (int ) ;
 scalar_t__ BIO_read_filename (int *,char const*) ;
 int BIO_s_file () ;
 int ERR_R_ASN1_LIB ;
 int ERR_R_BUF_LIB ;
 int ERR_R_PEM_LIB ;
 int ERR_R_SYS_LIB ;
 int * PEM_read_bio_RSAPrivateKey (int *,int *,int ,int ) ;
 int RSA_free (int *) ;
 int SSL_CTX_use_RSAPrivateKey (TYPE_1__*,int *) ;
 int SSL_FILETYPE_ASN1 ;
 int SSL_FILETYPE_PEM ;
 int SSL_F_SSL_CTX_USE_RSAPRIVATEKEY_FILE ;
 int SSL_R_BAD_SSL_FILETYPE ;
 int SSLerr (int ,int) ;
 int * d2i_RSAPrivateKey_bio (int *,int *) ;

int SSL_CTX_use_RSAPrivateKey_file(SSL_CTX *ctx, const char *file, int type)
{
    int j, ret = 0;
    BIO *in;
    RSA *rsa = ((void*)0);

    in = BIO_new(BIO_s_file());
    if (in == ((void*)0)) {
        SSLerr(SSL_F_SSL_CTX_USE_RSAPRIVATEKEY_FILE, ERR_R_BUF_LIB);
        goto end;
    }

    if (BIO_read_filename(in, file) <= 0) {
        SSLerr(SSL_F_SSL_CTX_USE_RSAPRIVATEKEY_FILE, ERR_R_SYS_LIB);
        goto end;
    }
    if (type == SSL_FILETYPE_ASN1) {
        j = ERR_R_ASN1_LIB;
        rsa = d2i_RSAPrivateKey_bio(in, ((void*)0));
    } else if (type == SSL_FILETYPE_PEM) {
        j = ERR_R_PEM_LIB;
        rsa = PEM_read_bio_RSAPrivateKey(in, ((void*)0),
                                         ctx->default_passwd_callback,
                                         ctx->default_passwd_callback_userdata);
    } else {
        SSLerr(SSL_F_SSL_CTX_USE_RSAPRIVATEKEY_FILE, SSL_R_BAD_SSL_FILETYPE);
        goto end;
    }
    if (rsa == ((void*)0)) {
        SSLerr(SSL_F_SSL_CTX_USE_RSAPRIVATEKEY_FILE, j);
        goto end;
    }
    ret = SSL_CTX_use_RSAPrivateKey(ctx, rsa);
    RSA_free(rsa);
 end:
    BIO_free(in);
    return ret;
}

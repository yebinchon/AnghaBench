
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * handshake_dgst; } ;
struct TYPE_6__ {TYPE_1__ s3; } ;
typedef TYPE_2__ SSL ;
typedef int EVP_MD_CTX ;


 int ERR_R_INTERNAL_ERROR ;
 scalar_t__ EVP_DigestFinal_ex (int *,unsigned char*,int *) ;
 int EVP_MD_CTX_copy_ex (int *,int *) ;
 int EVP_MD_CTX_free (int *) ;
 int * EVP_MD_CTX_new () ;
 int EVP_MD_CTX_size (int *) ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_F_SSL_HANDSHAKE_HASH ;
 int SSLfatal (TYPE_2__*,int ,int ,int ) ;

int ssl_handshake_hash(SSL *s, unsigned char *out, size_t outlen,
                       size_t *hashlen)
{
    EVP_MD_CTX *ctx = ((void*)0);
    EVP_MD_CTX *hdgst = s->s3.handshake_dgst;
    int hashleni = EVP_MD_CTX_size(hdgst);
    int ret = 0;

    if (hashleni < 0 || (size_t)hashleni > outlen) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_SSL_HANDSHAKE_HASH,
                 ERR_R_INTERNAL_ERROR);
        goto err;
    }

    ctx = EVP_MD_CTX_new();
    if (ctx == ((void*)0))
        goto err;

    if (!EVP_MD_CTX_copy_ex(ctx, hdgst)
        || EVP_DigestFinal_ex(ctx, out, ((void*)0)) <= 0) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_SSL_HANDSHAKE_HASH,
                 ERR_R_INTERNAL_ERROR);
        goto err;
    }

    *hashlen = hashleni;

    ret = 1;
 err:
    EVP_MD_CTX_free(ctx);
    return ret;
}

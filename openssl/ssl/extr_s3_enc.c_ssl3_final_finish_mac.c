
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int handshake_dgst; } ;
struct TYPE_7__ {int session; TYPE_1__ s3; } ;
typedef TYPE_2__ SSL ;
typedef int OSSL_PARAM ;
typedef int EVP_MD_CTX ;


 int ERR_R_INTERNAL_ERROR ;
 int ERR_R_MALLOC_FAILURE ;
 scalar_t__ EVP_DigestFinal_ex (int *,unsigned char*,int *) ;
 scalar_t__ EVP_DigestUpdate (int *,char const*,size_t) ;
 int EVP_MD_CTX_copy_ex (int *,int ) ;
 int EVP_MD_CTX_free (int *) ;
 int * EVP_MD_CTX_new () ;
 scalar_t__ EVP_MD_CTX_set_params (int *,int *) ;
 int EVP_MD_CTX_size (int *) ;
 scalar_t__ EVP_MD_CTX_type (int ) ;
 scalar_t__ NID_md5_sha1 ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_F_SSL3_FINAL_FINISH_MAC ;
 int SSL_R_NO_REQUIRED_DIGEST ;
 int SSLfatal (TYPE_2__*,int ,int ,int ) ;
 int ssl3_digest_cached_records (TYPE_2__*,int ) ;
 int ssl3_digest_master_key_set_params (int ,int *) ;

size_t ssl3_final_finish_mac(SSL *s, const char *sender, size_t len,
                             unsigned char *p)
{
    int ret;
    EVP_MD_CTX *ctx = ((void*)0);

    if (!ssl3_digest_cached_records(s, 0)) {

        return 0;
    }

    if (EVP_MD_CTX_type(s->s3.handshake_dgst) != NID_md5_sha1) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_SSL3_FINAL_FINISH_MAC,
                 SSL_R_NO_REQUIRED_DIGEST);
        return 0;
    }

    ctx = EVP_MD_CTX_new();
    if (ctx == ((void*)0)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_SSL3_FINAL_FINISH_MAC,
                 ERR_R_MALLOC_FAILURE);
        return 0;
    }
    if (!EVP_MD_CTX_copy_ex(ctx, s->s3.handshake_dgst)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_SSL3_FINAL_FINISH_MAC,
                 ERR_R_INTERNAL_ERROR);
        ret = 0;
        goto err;
    }

    ret = EVP_MD_CTX_size(ctx);
    if (ret < 0) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_SSL3_FINAL_FINISH_MAC,
                 ERR_R_INTERNAL_ERROR);
        ret = 0;
        goto err;
    }

    if (sender != ((void*)0)) {
        OSSL_PARAM digest_cmd_params[3];

        ssl3_digest_master_key_set_params(s->session, digest_cmd_params);

        if (EVP_DigestUpdate(ctx, sender, len) <= 0
            || EVP_MD_CTX_set_params(ctx, digest_cmd_params) <= 0
            || EVP_DigestFinal_ex(ctx, p, ((void*)0)) <= 0) {
                SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_SSL3_FINAL_FINISH_MAC,
                         ERR_R_INTERNAL_ERROR);
                ret = 0;
        }
    }

 err:
    EVP_MD_CTX_free(ctx);

    return ret;
}

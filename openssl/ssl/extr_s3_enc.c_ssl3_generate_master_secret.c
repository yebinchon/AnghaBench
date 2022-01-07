
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int buf ;
struct TYPE_6__ {unsigned char* client_random; unsigned char* server_random; } ;
struct TYPE_8__ {TYPE_2__* ctx; TYPE_1__ s3; } ;
struct TYPE_7__ {int md5; int sha1; } ;
typedef TYPE_3__ SSL ;
typedef int EVP_MD_CTX ;


 int ERR_R_INTERNAL_ERROR ;
 int ERR_R_MALLOC_FAILURE ;
 scalar_t__ EVP_DigestFinal_ex (int *,unsigned char*,unsigned int*) ;
 scalar_t__ EVP_DigestInit_ex (int *,int ,int *) ;
 scalar_t__ EVP_DigestUpdate (int *,unsigned char const*,unsigned int) ;
 int EVP_MAX_MD_SIZE ;
 int EVP_MD_CTX_free (int *) ;
 int * EVP_MD_CTX_new () ;
 int OPENSSL_cleanse (unsigned char*,int) ;
 unsigned int SSL3_RANDOM_SIZE ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_F_SSL3_GENERATE_MASTER_SECRET ;
 int SSLfatal (TYPE_3__*,int ,int ,int ) ;
 unsigned int strlen (char const*) ;

int ssl3_generate_master_secret(SSL *s, unsigned char *out, unsigned char *p,
                                size_t len, size_t *secret_size)
{
    static const unsigned char *salt[3] = {

        (const unsigned char *)"A",
        (const unsigned char *)"BB",
        (const unsigned char *)"CCC",





    };
    unsigned char buf[EVP_MAX_MD_SIZE];
    EVP_MD_CTX *ctx = EVP_MD_CTX_new();
    int i, ret = 1;
    unsigned int n;
    size_t ret_secret_size = 0;

    if (ctx == ((void*)0)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_SSL3_GENERATE_MASTER_SECRET,
                 ERR_R_MALLOC_FAILURE);
        return 0;
    }
    for (i = 0; i < 3; i++) {
        if (EVP_DigestInit_ex(ctx, s->ctx->sha1, ((void*)0)) <= 0
            || EVP_DigestUpdate(ctx, salt[i],
                                strlen((const char *)salt[i])) <= 0
            || EVP_DigestUpdate(ctx, p, len) <= 0
            || EVP_DigestUpdate(ctx, &(s->s3.client_random[0]),
                                SSL3_RANDOM_SIZE) <= 0
            || EVP_DigestUpdate(ctx, &(s->s3.server_random[0]),
                                SSL3_RANDOM_SIZE) <= 0

            || EVP_DigestFinal_ex(ctx, buf, &n) <= 0
            || EVP_DigestInit_ex(ctx, s->ctx->md5, ((void*)0)) <= 0
            || EVP_DigestUpdate(ctx, p, len) <= 0
            || EVP_DigestUpdate(ctx, buf, n) <= 0
            || EVP_DigestFinal_ex(ctx, out, &n) <= 0) {
            SSLfatal(s, SSL_AD_INTERNAL_ERROR,
                     SSL_F_SSL3_GENERATE_MASTER_SECRET, ERR_R_INTERNAL_ERROR);
            ret = 0;
            break;
        }
        out += n;
        ret_secret_size += n;
    }
    EVP_MD_CTX_free(ctx);

    OPENSSL_cleanse(buf, sizeof(buf));
    if (ret)
        *secret_size = ret_secret_size;
    return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int seedlen; int seed; int seclen; int sec; int P_sha1; int P_hash; } ;
typedef TYPE_1__ TLS1_PRF ;


 int EVP_MAC_CTX_free (int ) ;
 int OPENSSL_cleanse (int ,int ) ;
 int OPENSSL_clear_free (int ,int ) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static void kdf_tls1_prf_reset(void *vctx)
{
    TLS1_PRF *ctx = (TLS1_PRF *)vctx;

    EVP_MAC_CTX_free(ctx->P_hash);
    EVP_MAC_CTX_free(ctx->P_sha1);
    OPENSSL_clear_free(ctx->sec, ctx->seclen);
    OPENSSL_cleanse(ctx->seed, ctx->seedlen);
    memset(ctx, 0, sizeof(*ctx));
}

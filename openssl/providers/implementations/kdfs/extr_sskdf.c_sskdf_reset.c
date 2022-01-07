
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int salt_len; int salt; int info_len; int info; int secret_len; int secret; int digest; int macctx; } ;
typedef TYPE_1__ KDF_SSKDF ;


 int EVP_MAC_CTX_free (int ) ;
 int OPENSSL_clear_free (int ,int ) ;
 int memset (TYPE_1__*,int ,int) ;
 int ossl_prov_digest_reset (int *) ;

__attribute__((used)) static void sskdf_reset(void *vctx)
{
    KDF_SSKDF *ctx = (KDF_SSKDF *)vctx;

    EVP_MAC_CTX_free(ctx->macctx);
    ossl_prov_digest_reset(&ctx->digest);
    OPENSSL_clear_free(ctx->secret, ctx->secret_len);
    OPENSSL_clear_free(ctx->info, ctx->info_len);
    OPENSSL_clear_free(ctx->salt, ctx->salt_len);
    memset(ctx, 0, sizeof(*ctx));
}

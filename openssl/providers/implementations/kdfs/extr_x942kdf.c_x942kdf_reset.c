
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ukm_len; int ukm; int secret_len; int secret; int digest; } ;
typedef TYPE_1__ KDF_X942 ;


 int OPENSSL_clear_free (int ,int ) ;
 int memset (TYPE_1__*,int ,int) ;
 int ossl_prov_digest_reset (int *) ;

__attribute__((used)) static void x942kdf_reset(void *vctx)
{
    KDF_X942 *ctx = (KDF_X942 *)vctx;

    ossl_prov_digest_reset(&ctx->digest);
    OPENSSL_clear_free(ctx->secret, ctx->secret_len);
    OPENSSL_clear_free(ctx->ukm, ctx->ukm_len);
    memset(ctx, 0, sizeof(*ctx));
}

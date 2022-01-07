
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int info_len; int info; int key_len; int key; int salt; int digest; } ;
typedef TYPE_1__ KDF_HKDF ;


 int OPENSSL_cleanse (int ,int ) ;
 int OPENSSL_clear_free (int ,int ) ;
 int OPENSSL_free (int ) ;
 int memset (TYPE_1__*,int ,int) ;
 int ossl_prov_digest_reset (int *) ;

__attribute__((used)) static void kdf_hkdf_reset(void *vctx)
{
    KDF_HKDF *ctx = (KDF_HKDF *)vctx;

    ossl_prov_digest_reset(&ctx->digest);
    OPENSSL_free(ctx->salt);
    OPENSSL_clear_free(ctx->key, ctx->key_len);
    OPENSSL_cleanse(ctx->info, ctx->info_len);
    memset(ctx, 0, sizeof(*ctx));
}

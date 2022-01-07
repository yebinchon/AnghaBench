
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int constant_len; int constant; int key_len; int key; int cipher; } ;
typedef TYPE_1__ KRB5KDF_CTX ;


 int OPENSSL_clear_free (int ,int ) ;
 int memset (TYPE_1__*,int ,int) ;
 int ossl_prov_cipher_reset (int *) ;

__attribute__((used)) static void krb5kdf_reset(void *vctx)
{
    KRB5KDF_CTX *ctx = (KRB5KDF_CTX *)vctx;

    ossl_prov_cipher_reset(&ctx->cipher);
    OPENSSL_clear_free(ctx->key, ctx->key_len);
    OPENSSL_clear_free(ctx->constant, ctx->constant_len);
    memset(ctx, 0, sizeof(*ctx));
}

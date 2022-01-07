
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pass_len; int pass; int salt; int digest; } ;
typedef TYPE_1__ KDF_PBKDF2 ;


 int OPENSSL_clear_free (int ,int ) ;
 int OPENSSL_free (int ) ;
 int memset (TYPE_1__*,int ,int) ;
 int ossl_prov_digest_reset (int *) ;

__attribute__((used)) static void kdf_pbkdf2_cleanup(KDF_PBKDF2 *ctx)
{
    ossl_prov_digest_reset(&ctx->digest);
    OPENSSL_free(ctx->salt);
    OPENSSL_clear_free(ctx->pass, ctx->pass_len);
    memset(ctx, 0, sizeof(*ctx));
}

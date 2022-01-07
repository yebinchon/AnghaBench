
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pass_len; int pass; int salt; } ;
typedef TYPE_1__ KDF_SCRYPT ;


 int OPENSSL_clear_free (int ,int ) ;
 int OPENSSL_free (int ) ;
 int kdf_scrypt_init (TYPE_1__*) ;

__attribute__((used)) static void kdf_scrypt_reset(void *vctx)
{
    KDF_SCRYPT *ctx = (KDF_SCRYPT *)vctx;

    OPENSSL_free(ctx->salt);
    OPENSSL_clear_free(ctx->pass, ctx->pass_len);
    kdf_scrypt_init(ctx);
}

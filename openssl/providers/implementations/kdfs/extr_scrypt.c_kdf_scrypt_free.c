
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int sha256; } ;
typedef TYPE_1__ KDF_SCRYPT ;


 int EVP_MD_meth_free (int ) ;
 int OPENSSL_free (TYPE_1__*) ;
 int kdf_scrypt_reset (TYPE_1__*) ;

__attribute__((used)) static void kdf_scrypt_free(void *vctx)
{
    KDF_SCRYPT *ctx = (KDF_SCRYPT *)vctx;

    EVP_MD_meth_free(ctx->sha256);
    kdf_scrypt_reset(ctx);
    OPENSSL_free(ctx);
}

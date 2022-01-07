
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* data; } ;
struct TYPE_6__ {int kctx; } ;
typedef TYPE_1__ EVP_PKEY_KDF_CTX ;
typedef TYPE_2__ EVP_PKEY_CTX ;


 int EVP_KDF_CTX_free (int ) ;
 int OPENSSL_free (TYPE_1__*) ;
 int pkey_kdf_free_collected (TYPE_1__*) ;

__attribute__((used)) static void pkey_kdf_cleanup(EVP_PKEY_CTX *ctx)
{
    EVP_PKEY_KDF_CTX *pkctx = ctx->data;

    EVP_KDF_CTX_free(pkctx->kctx);
    pkey_kdf_free_collected(pkctx);
    OPENSSL_free(pkctx);
}

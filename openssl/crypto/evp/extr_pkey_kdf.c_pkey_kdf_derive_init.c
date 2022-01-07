
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* data; } ;
struct TYPE_5__ {int * kctx; } ;
typedef TYPE_1__ EVP_PKEY_KDF_CTX ;
typedef TYPE_2__ EVP_PKEY_CTX ;


 int EVP_KDF_reset (int *) ;
 int pkey_kdf_free_collected (TYPE_1__*) ;

__attribute__((used)) static int pkey_kdf_derive_init(EVP_PKEY_CTX *ctx)
{
    EVP_PKEY_KDF_CTX *pkctx = ctx->data;

    pkey_kdf_free_collected(pkctx);
    if (pkctx->kctx != ((void*)0))
        EVP_KDF_reset(pkctx->kctx);
    return 1;
}

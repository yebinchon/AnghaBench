
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ctx; } ;
typedef TYPE_1__ MAC_PKEY_CTX ;
typedef int EVP_MD_CTX ;


 int EVP_MAC_update (int ,void const*,size_t) ;
 int EVP_MD_CTX_pkey_ctx (int *) ;
 TYPE_1__* EVP_PKEY_CTX_get_data (int ) ;

__attribute__((used)) static int int_update(EVP_MD_CTX *ctx, const void *data, size_t count)
{
    MAC_PKEY_CTX *hctx = EVP_PKEY_CTX_get_data(EVP_MD_CTX_pkey_ctx(ctx));

    if (!EVP_MAC_update(hctx->ctx, data, count))
        return 0;
    return 1;
}

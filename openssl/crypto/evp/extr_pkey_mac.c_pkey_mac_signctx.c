
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ctx; } ;
typedef TYPE_1__ MAC_PKEY_CTX ;
typedef int EVP_PKEY_CTX ;
typedef int EVP_MD_CTX ;


 int EVP_MAC_final (int ,unsigned char*,size_t*,int ) ;
 int EVP_MAC_size (int ) ;
 TYPE_1__* EVP_PKEY_CTX_get_data (int *) ;

__attribute__((used)) static int pkey_mac_signctx(EVP_PKEY_CTX *ctx, unsigned char *sig,
                             size_t *siglen, EVP_MD_CTX *mctx)
{
    MAC_PKEY_CTX *hctx = EVP_PKEY_CTX_get_data(ctx);

    return EVP_MAC_final(hctx->ctx, sig, siglen, EVP_MAC_size(hctx->ctx));
}

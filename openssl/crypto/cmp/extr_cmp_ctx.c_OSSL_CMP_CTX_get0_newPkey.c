
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * pkey; int * p10CSR; int * newPkey; int newPkey_priv; } ;
typedef TYPE_1__ OSSL_CMP_CTX ;
typedef int EVP_PKEY ;


 int CMP_R_NULL_ARGUMENT ;
 int CMPerr (int ,int ) ;
 int * X509_REQ_get0_pubkey (int *) ;

EVP_PKEY *OSSL_CMP_CTX_get0_newPkey(const OSSL_CMP_CTX *ctx, int priv)
{
    if (ctx == ((void*)0)) {
        CMPerr(0, CMP_R_NULL_ARGUMENT);
        return ((void*)0);
    }

    if (ctx->newPkey != ((void*)0))
        return priv && !ctx->newPkey_priv ? ((void*)0) : ctx->newPkey;
    if (ctx->p10CSR != ((void*)0))
        return priv ? ((void*)0) : X509_REQ_get0_pubkey(ctx->p10CSR);
    return ctx->pkey;
}

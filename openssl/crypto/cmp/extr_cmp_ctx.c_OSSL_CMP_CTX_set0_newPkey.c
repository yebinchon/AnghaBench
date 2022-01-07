
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int newPkey_priv; int * newPkey; } ;
typedef TYPE_1__ OSSL_CMP_CTX ;
typedef int EVP_PKEY ;


 int CMP_R_NULL_ARGUMENT ;
 int CMPerr (int ,int ) ;
 int EVP_PKEY_free (int *) ;

int OSSL_CMP_CTX_set0_newPkey(OSSL_CMP_CTX *ctx, int priv, EVP_PKEY *pkey)
{
    if (ctx == ((void*)0)) {
        CMPerr(0, CMP_R_NULL_ARGUMENT);
        return 0;
    }

    EVP_PKEY_free(ctx->newPkey);
    ctx->newPkey = pkey;
    ctx->newPkey_priv = priv;
    return 1;
}

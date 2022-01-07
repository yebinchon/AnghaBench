
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * mdctx; } ;
typedef TYPE_1__ PROV_DSA_CTX ;
typedef int OSSL_PARAM ;


 int EVP_MD_CTX_get_params (int *,int *) ;

__attribute__((used)) static int dsa_get_ctx_md_params(void *vpdsactx, OSSL_PARAM *params)
{
    PROV_DSA_CTX *pdsactx = (PROV_DSA_CTX *)vpdsactx;

    if (pdsactx->mdctx == ((void*)0))
        return 0;

    return EVP_MD_CTX_get_params(pdsactx->mdctx, params);
}

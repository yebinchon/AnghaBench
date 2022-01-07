
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * pctx; } ;
typedef int EVP_PKEY_CTX ;
typedef TYPE_1__ CMS_SignerInfo ;



EVP_PKEY_CTX *CMS_SignerInfo_get0_pkey_ctx(CMS_SignerInfo *si)
{
    return si->pctx;
}

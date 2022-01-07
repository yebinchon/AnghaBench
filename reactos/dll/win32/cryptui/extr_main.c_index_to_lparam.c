
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct hierarchy_data {TYPE_2__* pCertViewInfo; } ;
struct TYPE_7__ {int csCertChain; } ;
struct TYPE_5__ {scalar_t__ pCryptProviderData; } ;
struct TYPE_6__ {int idxCounterSigner; int fCounterSigner; int idxSigner; TYPE_1__ u; } ;
typedef int LPARAM ;
typedef int DWORD ;
typedef TYPE_3__ CRYPT_PROVIDER_SGNR ;
typedef int CRYPT_PROVIDER_DATA ;


 TYPE_3__* WTHelperGetProvSignerFromChain (int *,int ,int ,int ) ;

__attribute__((used)) static LPARAM index_to_lparam(struct hierarchy_data *data, DWORD index)
{
    CRYPT_PROVIDER_SGNR *provSigner = WTHelperGetProvSignerFromChain(
     (CRYPT_PROVIDER_DATA *)data->pCertViewInfo->u.pCryptProviderData,
     data->pCertViewInfo->idxSigner, data->pCertViewInfo->fCounterSigner,
     data->pCertViewInfo->idxCounterSigner);




    if (index == provSigner->csCertChain - 1)
        return (LPARAM)data;
    return index << 1 | 1;
}

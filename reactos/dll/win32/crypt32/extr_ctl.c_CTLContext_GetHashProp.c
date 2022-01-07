
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ctl_t ;
struct TYPE_3__ {void* member_1; int member_0; } ;
typedef int DWORD ;
typedef TYPE_1__ CRYPT_DATA_BLOB ;
typedef int BYTE ;
typedef scalar_t__ BOOL ;
typedef int ALG_ID ;


 scalar_t__ CTLContext_SetProperty (int *,int ,int ,TYPE_1__*) ;
 scalar_t__ CryptHashCertificate (int ,int ,int ,int const*,int ,void*,int *) ;

__attribute__((used)) static BOOL CTLContext_GetHashProp(ctl_t *ctl, DWORD dwPropId,
 ALG_ID algID, const BYTE *toHash, DWORD toHashLen, void *pvData,
 DWORD *pcbData)
{
    BOOL ret = CryptHashCertificate(0, algID, 0, toHash, toHashLen, pvData,
     pcbData);
    if (ret && pvData)
    {
        CRYPT_DATA_BLOB blob = { *pcbData, pvData };

        ret = CTLContext_SetProperty(ctl, dwPropId, 0, &blob);
    }
    return ret;
}

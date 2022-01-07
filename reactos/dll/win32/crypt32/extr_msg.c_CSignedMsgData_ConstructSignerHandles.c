
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_13__ {TYPE_5__* signerHandles; TYPE_4__* info; } ;
struct TYPE_12__ {int authAttrHash; int contentHash; } ;
struct TYPE_11__ {TYPE_3__* rgSignerInfo; } ;
struct TYPE_9__ {scalar_t__ cAttr; } ;
struct TYPE_8__ {int pszObjId; } ;
struct TYPE_10__ {TYPE_2__ AuthAttrs; TYPE_1__ HashAlgorithm; } ;
typedef int HCRYPTPROV ;
typedef size_t DWORD ;
typedef TYPE_6__ CSignedMsgData ;
typedef scalar_t__ BOOL ;
typedef int ALG_ID ;


 size_t CMSG_CRYPT_RELEASE_CONTEXT_FLAG ;
 int CertOIDToAlgId (int ) ;
 scalar_t__ CryptCreateHash (int ,int ,int ,int ,int *) ;
 scalar_t__ FALSE ;
 int I_CryptGetDefaultCryptProv (int ) ;

__attribute__((used)) static BOOL CSignedMsgData_ConstructSignerHandles(CSignedMsgData *msg_data,
 DWORD signerIndex, HCRYPTPROV *crypt_prov, DWORD *flags)
{
    ALG_ID algID;
    BOOL ret;

    algID = CertOIDToAlgId(
     msg_data->info->rgSignerInfo[signerIndex].HashAlgorithm.pszObjId);

    if (!*crypt_prov)
    {
        *crypt_prov = I_CryptGetDefaultCryptProv(algID);
        if (!*crypt_prov) return FALSE;
        *flags &= ~CMSG_CRYPT_RELEASE_CONTEXT_FLAG;
    }

    ret = CryptCreateHash(*crypt_prov, algID, 0, 0,
     &msg_data->signerHandles->contentHash);
    if (ret && msg_data->info->rgSignerInfo[signerIndex].AuthAttrs.cAttr > 0)
        ret = CryptCreateHash(*crypt_prov, algID, 0, 0,
         &msg_data->signerHandles->authAttrHash);
    return ret;
}

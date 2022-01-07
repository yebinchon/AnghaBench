
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int pszObjId; } ;
struct TYPE_12__ {int cbSize; scalar_t__ hCryptProv; TYPE_1__ HashAlgorithm; } ;
struct TYPE_10__ {int * pbData; scalar_t__ cbData; } ;
struct TYPE_11__ {int hash; TYPE_2__ data; scalar_t__ prov; } ;
typedef int PCMSG_STREAM_INFO ;
typedef int LPSTR ;
typedef scalar_t__ HCRYPTPROV ;
typedef TYPE_3__* HCRYPTMSG ;
typedef int DWORD ;
typedef int CryptMsgBase ;
typedef TYPE_4__ CMSG_HASHED_ENCODE_INFO ;
typedef TYPE_3__ CHashEncodeMsg ;
typedef int ALG_ID ;


 int CHashEncodeMsg_Close ;
 int CHashEncodeMsg_GetParam ;
 int CHashEncodeMsg_Update ;
 int CMSG_CRYPT_RELEASE_CONTEXT_FLAG ;
 int CRYPT_DefaultMsgControl ;
 int CRYPT_E_UNKNOWN_ALGO ;
 int CertOIDToAlgId (int ) ;
 int CryptCreateHash (scalar_t__,int ,int ,int ,int *) ;
 TYPE_3__* CryptMemAlloc (int) ;
 int CryptMsgBase_Init (int *,int ,int ,int ,int ,int ,int ) ;
 int CryptMsgClose (TYPE_3__*) ;
 int E_INVALIDARG ;
 scalar_t__ I_CryptGetDefaultCryptProv (int ) ;
 int SetLastError (int ) ;

__attribute__((used)) static HCRYPTMSG CHashEncodeMsg_Open(DWORD dwFlags, const void *pvMsgEncodeInfo,
 LPSTR pszInnerContentObjID, PCMSG_STREAM_INFO pStreamInfo)
{
    CHashEncodeMsg *msg;
    const CMSG_HASHED_ENCODE_INFO *info = pvMsgEncodeInfo;
    HCRYPTPROV prov;
    ALG_ID algID;

    if (info->cbSize != sizeof(CMSG_HASHED_ENCODE_INFO))
    {
        SetLastError(E_INVALIDARG);
        return ((void*)0);
    }
    if (!(algID = CertOIDToAlgId(info->HashAlgorithm.pszObjId)))
    {
        SetLastError(CRYPT_E_UNKNOWN_ALGO);
        return ((void*)0);
    }
    if (info->hCryptProv)
        prov = info->hCryptProv;
    else
    {
        prov = I_CryptGetDefaultCryptProv(algID);
        if (!prov)
        {
            SetLastError(E_INVALIDARG);
            return ((void*)0);
        }
        dwFlags &= ~CMSG_CRYPT_RELEASE_CONTEXT_FLAG;
    }
    msg = CryptMemAlloc(sizeof(CHashEncodeMsg));
    if (msg)
    {
        CryptMsgBase_Init((CryptMsgBase *)msg, dwFlags, pStreamInfo,
         CHashEncodeMsg_Close, CHashEncodeMsg_GetParam, CHashEncodeMsg_Update,
         CRYPT_DefaultMsgControl);
        msg->prov = prov;
        msg->data.cbData = 0;
        msg->data.pbData = ((void*)0);
        if (!CryptCreateHash(prov, algID, 0, 0, &msg->hash))
        {
            CryptMsgClose(msg);
            msg = ((void*)0);
        }
    }
    return msg;
}

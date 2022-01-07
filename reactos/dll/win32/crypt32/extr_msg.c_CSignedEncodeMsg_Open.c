
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_11__ ;
typedef struct TYPE_16__ TYPE_10__ ;


struct TYPE_22__ {int cSignerInfo; int rgCrlEncoded; int cCrlEncoded; int rgCertEncoded; int cCertEncoded; int * signerKeySpec; struct TYPE_22__* rgSignerInfo; int version; } ;
struct TYPE_21__ {int cbSize; size_t cSigners; int rgCrlEncoded; int cCrlEncoded; int rgCertEncoded; int cCertEncoded; TYPE_10__* rgSigners; scalar_t__ cAttrCertEncoded; } ;
struct TYPE_17__ {TYPE_6__* info; scalar_t__ cSignerHandle; int * signerHandles; } ;
struct TYPE_18__ {int * pbData; scalar_t__ cbData; } ;
struct TYPE_20__ {TYPE_11__ msg_data; TYPE_1__ data; int * innerOID; } ;
struct TYPE_19__ {scalar_t__ dwIdChoice; } ;
struct TYPE_16__ {int dwKeySpec; int hCryptProv; TYPE_2__ SignerId; } ;
typedef int PCMSG_STREAM_INFO ;
typedef int LPCSTR ;
typedef TYPE_3__* HCRYPTMSG ;
typedef size_t DWORD ;
typedef int CryptMsgBase ;
typedef TYPE_3__ CSignedEncodeMsg ;
typedef int CRYPT_SIGNED_INFO ;
typedef TYPE_5__ CMSG_SIGNED_ENCODE_INFO_WITH_CMS ;
typedef int CMSG_SIGNED_ENCODE_INFO ;
typedef int CMSG_CMS_SIGNER_INFO ;
typedef scalar_t__ BOOL ;


 scalar_t__ CERT_ID_KEY_IDENTIFIER ;
 size_t CMSG_CRYPT_RELEASE_CONTEXT_FLAG ;
 int CMSG_SIGNED_DATA_V1 ;
 int CMSG_SIGNED_DATA_V3 ;
 scalar_t__ CRYPT_ConstructBlobArray (int *,int *,int ,int ) ;
 int CRYPT_DefaultMsgControl ;
 int CRYPT_IsValidSigner (TYPE_10__*) ;
 int CSignedEncodeMsg_Close (TYPE_3__*) ;
 int CSignedEncodeMsg_GetParam ;
 int CSignedEncodeMsg_Update ;
 scalar_t__ CSignedMsgData_AllocateHandles (TYPE_11__*) ;
 scalar_t__ CSignedMsgData_ConstructSignerHandles (TYPE_11__*,size_t,int *,size_t*) ;
 scalar_t__ CSignerInfo_Construct (TYPE_6__*,TYPE_10__*) ;
 void* CryptMemAlloc (int) ;
 int CryptMemFree (TYPE_3__*) ;
 int CryptMsgBase_Init (int *,size_t,int ,int (*) (TYPE_3__*),int ,int ,int ) ;
 int CryptReleaseContext (int ,int ) ;
 int E_INVALIDARG ;
 scalar_t__ FALSE ;
 int FIXME (char*) ;
 int SetLastError (int ) ;
 scalar_t__ TRUE ;
 int memset (TYPE_6__*,int ,int) ;
 int strcpy (int *,int ) ;
 int strlen (int ) ;

__attribute__((used)) static HCRYPTMSG CSignedEncodeMsg_Open(DWORD dwFlags,
 const void *pvMsgEncodeInfo, LPCSTR pszInnerContentObjID,
 PCMSG_STREAM_INFO pStreamInfo)
{
    const CMSG_SIGNED_ENCODE_INFO_WITH_CMS *info = pvMsgEncodeInfo;
    DWORD i;
    CSignedEncodeMsg *msg;

    if (info->cbSize != sizeof(CMSG_SIGNED_ENCODE_INFO) &&
     info->cbSize != sizeof(CMSG_SIGNED_ENCODE_INFO_WITH_CMS))
    {
        SetLastError(E_INVALIDARG);
        return ((void*)0);
    }
    if (info->cbSize == sizeof(CMSG_SIGNED_ENCODE_INFO_WITH_CMS) &&
     info->cAttrCertEncoded)
    {
        FIXME("CMSG_SIGNED_ENCODE_INFO with CMS fields unsupported\n");
        return ((void*)0);
    }
    for (i = 0; i < info->cSigners; i++)
        if (!CRYPT_IsValidSigner(&info->rgSigners[i]))
            return ((void*)0);
    msg = CryptMemAlloc(sizeof(CSignedEncodeMsg));
    if (msg)
    {
        BOOL ret = TRUE;

        CryptMsgBase_Init((CryptMsgBase *)msg, dwFlags, pStreamInfo,
         CSignedEncodeMsg_Close, CSignedEncodeMsg_GetParam,
         CSignedEncodeMsg_Update, CRYPT_DefaultMsgControl);
        if (pszInnerContentObjID)
        {
            msg->innerOID = CryptMemAlloc(strlen(pszInnerContentObjID) + 1);
            if (msg->innerOID)
                strcpy(msg->innerOID, pszInnerContentObjID);
            else
                ret = FALSE;
        }
        else
            msg->innerOID = ((void*)0);
        msg->data.cbData = 0;
        msg->data.pbData = ((void*)0);
        if (ret)
            msg->msg_data.info = CryptMemAlloc(sizeof(CRYPT_SIGNED_INFO));
        else
            msg->msg_data.info = ((void*)0);
        if (msg->msg_data.info)
        {
            memset(msg->msg_data.info, 0, sizeof(CRYPT_SIGNED_INFO));
            msg->msg_data.info->version = CMSG_SIGNED_DATA_V1;
        }
        else
            ret = FALSE;
        if (ret)
        {
            if (info->cSigners)
            {
                msg->msg_data.info->rgSignerInfo =
                 CryptMemAlloc(info->cSigners * sizeof(CMSG_CMS_SIGNER_INFO));
                if (msg->msg_data.info->rgSignerInfo)
                {
                    msg->msg_data.info->cSignerInfo = info->cSigners;
                    memset(msg->msg_data.info->rgSignerInfo, 0,
                     msg->msg_data.info->cSignerInfo *
                     sizeof(CMSG_CMS_SIGNER_INFO));
                    ret = CSignedMsgData_AllocateHandles(&msg->msg_data);
                    msg->msg_data.info->signerKeySpec = CryptMemAlloc(info->cSigners * sizeof(DWORD));
                    if (!msg->msg_data.info->signerKeySpec)
                        ret = FALSE;
                    for (i = 0; ret && i < msg->msg_data.info->cSignerInfo; i++)
                    {
                        if (info->rgSigners[i].SignerId.dwIdChoice ==
                         CERT_ID_KEY_IDENTIFIER)
                            msg->msg_data.info->version = CMSG_SIGNED_DATA_V3;
                        ret = CSignerInfo_Construct(
                         &msg->msg_data.info->rgSignerInfo[i],
                         &info->rgSigners[i]);
                        if (ret)
                        {
                            ret = CSignedMsgData_ConstructSignerHandles(
                             &msg->msg_data, i, &info->rgSigners[i].hCryptProv, &dwFlags);
                            if (dwFlags & CMSG_CRYPT_RELEASE_CONTEXT_FLAG)
                                CryptReleaseContext(info->rgSigners[i].hCryptProv,
                                 0);
                        }
                        msg->msg_data.info->signerKeySpec[i] =
                         info->rgSigners[i].dwKeySpec;
                    }
                }
                else
                    ret = FALSE;
            }
            else
            {
                msg->msg_data.info->cSignerInfo = 0;
                msg->msg_data.signerHandles = ((void*)0);
                msg->msg_data.cSignerHandle = 0;
            }
        }
        if (ret)
            ret = CRYPT_ConstructBlobArray(&msg->msg_data.info->cCertEncoded,
             &msg->msg_data.info->rgCertEncoded, info->cCertEncoded,
             info->rgCertEncoded);
        if (ret)
            ret = CRYPT_ConstructBlobArray(&msg->msg_data.info->cCrlEncoded,
             &msg->msg_data.info->rgCrlEncoded, info->cCrlEncoded,
             info->rgCrlEncoded);
        if (!ret)
        {
            CSignedEncodeMsg_Close(msg);
            CryptMemFree(msg);
            msg = ((void*)0);
        }
    }
    return msg;
}

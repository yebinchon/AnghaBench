#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_6__ ;
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;
typedef  struct TYPE_17__   TYPE_11__ ;
typedef  struct TYPE_16__   TYPE_10__ ;

/* Type definitions */
struct TYPE_22__ {int cSignerInfo; int /*<<< orphan*/  rgCrlEncoded; int /*<<< orphan*/  cCrlEncoded; int /*<<< orphan*/  rgCertEncoded; int /*<<< orphan*/  cCertEncoded; int /*<<< orphan*/ * signerKeySpec; struct TYPE_22__* rgSignerInfo; int /*<<< orphan*/  version; } ;
struct TYPE_21__ {int cbSize; size_t cSigners; int /*<<< orphan*/  rgCrlEncoded; int /*<<< orphan*/  cCrlEncoded; int /*<<< orphan*/  rgCertEncoded; int /*<<< orphan*/  cCertEncoded; TYPE_10__* rgSigners; scalar_t__ cAttrCertEncoded; } ;
struct TYPE_17__ {TYPE_6__* info; scalar_t__ cSignerHandle; int /*<<< orphan*/ * signerHandles; } ;
struct TYPE_18__ {int /*<<< orphan*/ * pbData; scalar_t__ cbData; } ;
struct TYPE_20__ {TYPE_11__ msg_data; TYPE_1__ data; int /*<<< orphan*/ * innerOID; } ;
struct TYPE_19__ {scalar_t__ dwIdChoice; } ;
struct TYPE_16__ {int /*<<< orphan*/  dwKeySpec; int /*<<< orphan*/  hCryptProv; TYPE_2__ SignerId; } ;
typedef  int /*<<< orphan*/  PCMSG_STREAM_INFO ;
typedef  int /*<<< orphan*/  LPCSTR ;
typedef  TYPE_3__* HCRYPTMSG ;
typedef  size_t DWORD ;
typedef  int /*<<< orphan*/  CryptMsgBase ;
typedef  TYPE_3__ CSignedEncodeMsg ;
typedef  int /*<<< orphan*/  CRYPT_SIGNED_INFO ;
typedef  TYPE_5__ CMSG_SIGNED_ENCODE_INFO_WITH_CMS ;
typedef  int /*<<< orphan*/  CMSG_SIGNED_ENCODE_INFO ;
typedef  int /*<<< orphan*/  CMSG_CMS_SIGNER_INFO ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ CERT_ID_KEY_IDENTIFIER ; 
 size_t CMSG_CRYPT_RELEASE_CONTEXT_FLAG ; 
 int /*<<< orphan*/  CMSG_SIGNED_DATA_V1 ; 
 int /*<<< orphan*/  CMSG_SIGNED_DATA_V3 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CRYPT_DefaultMsgControl ; 
 int /*<<< orphan*/  FUNC1 (TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  CSignedEncodeMsg_GetParam ; 
 int /*<<< orphan*/  CSignedEncodeMsg_Update ; 
 scalar_t__ FUNC3 (TYPE_11__*) ; 
 scalar_t__ FUNC4 (TYPE_11__*,size_t,int /*<<< orphan*/ *,size_t*) ; 
 scalar_t__ FUNC5 (TYPE_6__*,TYPE_10__*) ; 
 void* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/  (*) (TYPE_3__*),int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E_INVALIDARG ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC12 (TYPE_6__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static HCRYPTMSG FUNC15(DWORD dwFlags,
 const void *pvMsgEncodeInfo, LPCSTR pszInnerContentObjID,
 PCMSG_STREAM_INFO pStreamInfo)
{
    const CMSG_SIGNED_ENCODE_INFO_WITH_CMS *info = pvMsgEncodeInfo;
    DWORD i;
    CSignedEncodeMsg *msg;

    if (info->cbSize != sizeof(CMSG_SIGNED_ENCODE_INFO) &&
     info->cbSize != sizeof(CMSG_SIGNED_ENCODE_INFO_WITH_CMS))
    {
        FUNC11(E_INVALIDARG);
        return NULL;
    }
    if (info->cbSize == sizeof(CMSG_SIGNED_ENCODE_INFO_WITH_CMS) &&
     info->cAttrCertEncoded)
    {
        FUNC10("CMSG_SIGNED_ENCODE_INFO with CMS fields unsupported\n");
        return NULL;
    }
    for (i = 0; i < info->cSigners; i++)
        if (!FUNC1(&info->rgSigners[i]))
            return NULL;
    msg = FUNC6(sizeof(CSignedEncodeMsg));
    if (msg)
    {
        BOOL ret = TRUE;

        FUNC8((CryptMsgBase *)msg, dwFlags, pStreamInfo,
         CSignedEncodeMsg_Close, CSignedEncodeMsg_GetParam,
         CSignedEncodeMsg_Update, CRYPT_DefaultMsgControl);
        if (pszInnerContentObjID)
        {
            msg->innerOID = FUNC6(FUNC14(pszInnerContentObjID) + 1);
            if (msg->innerOID)
                FUNC13(msg->innerOID, pszInnerContentObjID);
            else
                ret = FALSE;
        }
        else
            msg->innerOID = NULL;
        msg->data.cbData = 0;
        msg->data.pbData = NULL;
        if (ret)
            msg->msg_data.info = FUNC6(sizeof(CRYPT_SIGNED_INFO));
        else
            msg->msg_data.info = NULL;
        if (msg->msg_data.info)
        {
            FUNC12(msg->msg_data.info, 0, sizeof(CRYPT_SIGNED_INFO));
            msg->msg_data.info->version = CMSG_SIGNED_DATA_V1;
        }
        else
            ret = FALSE;
        if (ret)
        {
            if (info->cSigners)
            {
                msg->msg_data.info->rgSignerInfo =
                 FUNC6(info->cSigners * sizeof(CMSG_CMS_SIGNER_INFO));
                if (msg->msg_data.info->rgSignerInfo)
                {
                    msg->msg_data.info->cSignerInfo = info->cSigners;
                    FUNC12(msg->msg_data.info->rgSignerInfo, 0,
                     msg->msg_data.info->cSignerInfo *
                     sizeof(CMSG_CMS_SIGNER_INFO));
                    ret = FUNC3(&msg->msg_data);
                    msg->msg_data.info->signerKeySpec = FUNC6(info->cSigners * sizeof(DWORD));
                    if (!msg->msg_data.info->signerKeySpec)
                        ret = FALSE;
                    for (i = 0; ret && i < msg->msg_data.info->cSignerInfo; i++)
                    {
                        if (info->rgSigners[i].SignerId.dwIdChoice ==
                         CERT_ID_KEY_IDENTIFIER)
                            msg->msg_data.info->version = CMSG_SIGNED_DATA_V3;
                        ret = FUNC5(
                         &msg->msg_data.info->rgSignerInfo[i],
                         &info->rgSigners[i]);
                        if (ret)
                        {
                            ret = FUNC4(
                             &msg->msg_data, i, &info->rgSigners[i].hCryptProv, &dwFlags);
                            if (dwFlags & CMSG_CRYPT_RELEASE_CONTEXT_FLAG)
                                FUNC9(info->rgSigners[i].hCryptProv,
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
                msg->msg_data.signerHandles = NULL;
                msg->msg_data.cSignerHandle = 0;
            }
        }
        if (ret)
            ret = FUNC0(&msg->msg_data.info->cCertEncoded,
             &msg->msg_data.info->rgCertEncoded, info->cCertEncoded,
             info->rgCertEncoded);
        if (ret)
            ret = FUNC0(&msg->msg_data.info->cCrlEncoded,
             &msg->msg_data.info->rgCrlEncoded, info->cCrlEncoded,
             info->rgCrlEncoded);
        if (!ret)
        {
            FUNC2(msg);
            FUNC7(msg);
            msg = NULL;
        }
    }
    return msg;
}
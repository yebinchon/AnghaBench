#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  pszObjId; } ;
struct TYPE_12__ {int cbSize; scalar_t__ hCryptProv; TYPE_1__ HashAlgorithm; } ;
struct TYPE_10__ {int /*<<< orphan*/ * pbData; scalar_t__ cbData; } ;
struct TYPE_11__ {int /*<<< orphan*/  hash; TYPE_2__ data; scalar_t__ prov; } ;
typedef  int /*<<< orphan*/  PCMSG_STREAM_INFO ;
typedef  int /*<<< orphan*/  LPSTR ;
typedef  scalar_t__ HCRYPTPROV ;
typedef  TYPE_3__* HCRYPTMSG ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  CryptMsgBase ;
typedef  TYPE_4__ CMSG_HASHED_ENCODE_INFO ;
typedef  TYPE_3__ CHashEncodeMsg ;
typedef  int /*<<< orphan*/  ALG_ID ;

/* Variables and functions */
 int /*<<< orphan*/  CHashEncodeMsg_Close ; 
 int /*<<< orphan*/  CHashEncodeMsg_GetParam ; 
 int /*<<< orphan*/  CHashEncodeMsg_Update ; 
 int /*<<< orphan*/  CMSG_CRYPT_RELEASE_CONTEXT_FLAG ; 
 int /*<<< orphan*/  CRYPT_DefaultMsgControl ; 
 int /*<<< orphan*/  CRYPT_E_UNKNOWN_ALGO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  E_INVALIDARG ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static HCRYPTMSG FUNC7(DWORD dwFlags, const void *pvMsgEncodeInfo,
 LPSTR pszInnerContentObjID, PCMSG_STREAM_INFO pStreamInfo)
{
    CHashEncodeMsg *msg;
    const CMSG_HASHED_ENCODE_INFO *info = pvMsgEncodeInfo;
    HCRYPTPROV prov;
    ALG_ID algID;

    if (info->cbSize != sizeof(CMSG_HASHED_ENCODE_INFO))
    {
        FUNC6(E_INVALIDARG);
        return NULL;
    }
    if (!(algID = FUNC0(info->HashAlgorithm.pszObjId)))
    {
        FUNC6(CRYPT_E_UNKNOWN_ALGO);
        return NULL;
    }
    if (info->hCryptProv)
        prov = info->hCryptProv;
    else
    {
        prov = FUNC5(algID);
        if (!prov)
        {
            FUNC6(E_INVALIDARG);
            return NULL;
        }
        dwFlags &= ~CMSG_CRYPT_RELEASE_CONTEXT_FLAG;
    }
    msg = FUNC2(sizeof(CHashEncodeMsg));
    if (msg)
    {
        FUNC3((CryptMsgBase *)msg, dwFlags, pStreamInfo,
         CHashEncodeMsg_Close, CHashEncodeMsg_GetParam, CHashEncodeMsg_Update,
         CRYPT_DefaultMsgControl);
        msg->prov = prov;
        msg->data.cbData = 0;
        msg->data.pbData = NULL;
        if (!FUNC1(prov, algID, 0, 0, &msg->hash))
        {
            FUNC4(msg);
            msg = NULL;
        }
    }
    return msg;
}
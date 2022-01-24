#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_9__ ;
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ cbData; } ;
struct TYPE_17__ {TYPE_1__ Parameters; scalar_t__ pszObjId; } ;
struct TYPE_16__ {scalar_t__ cbData; } ;
struct TYPE_12__ {TYPE_7__ SerialNumber; TYPE_7__ Issuer; } ;
struct TYPE_13__ {TYPE_7__ KeyId; TYPE_2__ IssuerSerialNumber; } ;
struct TYPE_14__ {scalar_t__ dwIdChoice; TYPE_3__ u; } ;
struct TYPE_15__ {int /*<<< orphan*/  UnauthAttrs; int /*<<< orphan*/  AuthAttrs; TYPE_7__ EncryptedHash; TYPE_9__ HashEncryptionAlgorithm; TYPE_9__ HashAlgorithm; TYPE_4__ SignerId; int /*<<< orphan*/  dwVersion; } ;
typedef  int /*<<< orphan*/ * LPBYTE ;
typedef  scalar_t__ DWORD ;
typedef  TYPE_5__ CMSG_CMS_SIGNER_INFO ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ CERT_ID_ISSUER_SERIAL_NUMBER ; 
 int /*<<< orphan*/  FUNC1 (TYPE_9__*,TYPE_9__*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_7__*,TYPE_7__*,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ERROR_MORE_DATA ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,void*,...) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC8 (scalar_t__) ; 

__attribute__((used)) static BOOL FUNC9(void *pvData, DWORD *pcbData,
 const CMSG_CMS_SIGNER_INFO *in)
{
    DWORD size = sizeof(CMSG_CMS_SIGNER_INFO);
    BOOL ret;

    FUNC7("(%p, %d, %p)\n", pvData, pvData ? *pcbData : 0, in);

    if (in->SignerId.dwIdChoice == CERT_ID_ISSUER_SERIAL_NUMBER)
    {
        size += in->SignerId.u.IssuerSerialNumber.Issuer.cbData;
        size += in->SignerId.u.IssuerSerialNumber.SerialNumber.cbData;
    }
    else
        size += in->SignerId.u.KeyId.cbData;
    if (in->HashAlgorithm.pszObjId)
        size += FUNC8(in->HashAlgorithm.pszObjId) + 1;
    size += in->HashAlgorithm.Parameters.cbData;
    if (in->HashEncryptionAlgorithm.pszObjId)
        size += FUNC8(in->HashEncryptionAlgorithm.pszObjId) + 1;
    size += in->HashEncryptionAlgorithm.Parameters.cbData;
    size += in->EncryptedHash.cbData;
    /* align pointer */
    size = FUNC0(size);
    size += FUNC4(&in->AuthAttrs);
    size += FUNC4(&in->UnauthAttrs);
    if (!pvData)
    {
        *pcbData = size;
        ret = TRUE;
    }
    else if (*pcbData < size)
    {
        *pcbData = size;
        FUNC6(ERROR_MORE_DATA);
        ret = FALSE;
    }
    else
    {
        LPBYTE nextData = (BYTE *)pvData + sizeof(CMSG_CMS_SIGNER_INFO);
        CMSG_CMS_SIGNER_INFO *out = pvData;

        out->dwVersion = in->dwVersion;
        out->SignerId.dwIdChoice = in->SignerId.dwIdChoice;
        if (in->SignerId.dwIdChoice == CERT_ID_ISSUER_SERIAL_NUMBER)
        {
            FUNC3(&out->SignerId.u.IssuerSerialNumber.Issuer,
             &in->SignerId.u.IssuerSerialNumber.Issuer, &nextData);
            FUNC3(&out->SignerId.u.IssuerSerialNumber.SerialNumber,
             &in->SignerId.u.IssuerSerialNumber.SerialNumber, &nextData);
        }
        else
            FUNC3(&out->SignerId.u.KeyId, &in->SignerId.u.KeyId, &nextData);
        FUNC1(&out->HashAlgorithm, &in->HashAlgorithm,
         &nextData);
        FUNC1(&out->HashEncryptionAlgorithm,
         &in->HashEncryptionAlgorithm, &nextData);
        FUNC3(&out->EncryptedHash, &in->EncryptedHash, &nextData);
        nextData = FUNC5(nextData);
        FUNC2(&out->AuthAttrs, &in->AuthAttrs, &nextData);
        FUNC2(&out->UnauthAttrs, &in->UnauthAttrs, &nextData);
        ret = TRUE;
    }
    FUNC7("returning %d\n", ret);
    return ret;
}
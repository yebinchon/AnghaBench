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
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ cbData; } ;
struct TYPE_17__ {TYPE_1__ Parameters; scalar_t__ pszObjId; } ;
struct TYPE_16__ {scalar_t__ cbData; } ;
struct TYPE_11__ {TYPE_8__ SerialNumber; TYPE_8__ Issuer; } ;
struct TYPE_12__ {int /*<<< orphan*/  KeyId; TYPE_2__ IssuerSerialNumber; } ;
struct TYPE_13__ {scalar_t__ dwIdChoice; TYPE_3__ u; } ;
struct TYPE_15__ {int /*<<< orphan*/  UnauthAttrs; int /*<<< orphan*/  AuthAttrs; TYPE_8__ EncryptedHash; TYPE_9__ HashEncryptionAlgorithm; TYPE_9__ HashAlgorithm; TYPE_4__ SignerId; int /*<<< orphan*/  dwVersion; } ;
struct TYPE_14__ {int /*<<< orphan*/  UnauthAttrs; int /*<<< orphan*/  AuthAttrs; int /*<<< orphan*/  EncryptedHash; int /*<<< orphan*/  HashEncryptionAlgorithm; int /*<<< orphan*/  HashAlgorithm; int /*<<< orphan*/  SerialNumber; int /*<<< orphan*/  Issuer; int /*<<< orphan*/  dwVersion; } ;
typedef  int /*<<< orphan*/ * LPBYTE ;
typedef  scalar_t__ DWORD ;
typedef  TYPE_5__ CMSG_SIGNER_INFO ;
typedef  TYPE_6__ CMSG_CMS_SIGNER_INFO ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ CERT_ID_ISSUER_SERIAL_NUMBER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_9__*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_8__*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ERROR_MORE_DATA ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,void*,...) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC10 (scalar_t__) ; 

__attribute__((used)) static BOOL FUNC11(void *pvData, DWORD *pcbData,
 const CMSG_CMS_SIGNER_INFO *in)
{
    DWORD size = sizeof(CMSG_SIGNER_INFO), rdnSize = 0;
    BOOL ret;

    FUNC9("(%p, %d, %p)\n", pvData, pvData ? *pcbData : 0, in);

    if (in->SignerId.dwIdChoice == CERT_ID_ISSUER_SERIAL_NUMBER)
    {
        size += in->SignerId.u.IssuerSerialNumber.Issuer.cbData;
        size += in->SignerId.u.IssuerSerialNumber.SerialNumber.cbData;
    }
    else
    {
        rdnSize = FUNC6(&in->SignerId.u.KeyId);
        size += rdnSize;
    }
    if (in->HashAlgorithm.pszObjId)
        size += FUNC10(in->HashAlgorithm.pszObjId) + 1;
    size += in->HashAlgorithm.Parameters.cbData;
    if (in->HashEncryptionAlgorithm.pszObjId)
        size += FUNC10(in->HashEncryptionAlgorithm.pszObjId) + 1;
    size += in->HashEncryptionAlgorithm.Parameters.cbData;
    size += in->EncryptedHash.cbData;
    /* align pointer */
    size = FUNC0(size);
    size += FUNC5(&in->AuthAttrs);
    size += FUNC5(&in->UnauthAttrs);
    if (!pvData)
    {
        ret = TRUE;
    }
    else if (*pcbData < size)
    {
        FUNC8(ERROR_MORE_DATA);
        ret = FALSE;
    }
    else
    {
        LPBYTE nextData = (BYTE *)pvData + sizeof(CMSG_SIGNER_INFO);
        CMSG_SIGNER_INFO *out = pvData;

        ret = TRUE;
        out->dwVersion = in->dwVersion;
        if (in->SignerId.dwIdChoice == CERT_ID_ISSUER_SERIAL_NUMBER)
        {
            FUNC3(&out->Issuer,
             &in->SignerId.u.IssuerSerialNumber.Issuer, &nextData);
            FUNC3(&out->SerialNumber,
             &in->SignerId.u.IssuerSerialNumber.SerialNumber, &nextData);
        }
        else
            ret = FUNC4(&out->Issuer, &out->SerialNumber,
             &in->SignerId.u.KeyId, rdnSize, &nextData);
        if (ret)
        {
            FUNC1(&out->HashAlgorithm, &in->HashAlgorithm,
             &nextData);
            FUNC1(&out->HashEncryptionAlgorithm,
             &in->HashEncryptionAlgorithm, &nextData);
            FUNC3(&out->EncryptedHash, &in->EncryptedHash, &nextData);
            nextData = FUNC7(nextData);
            FUNC2(&out->AuthAttrs, &in->AuthAttrs, &nextData);
            FUNC2(&out->UnauthAttrs, &in->UnauthAttrs, &nextData);
        }
    }
    *pcbData = size;
    FUNC9("returning %d\n", ret);
    return ret;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_8__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {scalar_t__ cbData; } ;
struct TYPE_13__ {int /*<<< orphan*/  SerialNumber; int /*<<< orphan*/  Issuer; } ;
struct TYPE_9__ {TYPE_8__ SerialNumber; TYPE_8__ Issuer; } ;
struct TYPE_10__ {int /*<<< orphan*/  KeyId; TYPE_1__ IssuerSerialNumber; } ;
struct TYPE_11__ {scalar_t__ dwIdChoice; TYPE_2__ u; } ;
struct TYPE_12__ {TYPE_3__ SignerId; } ;
typedef  int /*<<< orphan*/ * LPBYTE ;
typedef  scalar_t__ DWORD ;
typedef  TYPE_4__ CMSG_CMS_SIGNER_INFO ;
typedef  TYPE_5__ CERT_INFO ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 scalar_t__ CERT_ID_ISSUER_SERIAL_NUMBER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_8__*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ERROR_MORE_DATA ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,void*,...) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static BOOL FUNC6(void *pvData, DWORD *pcbData,
 const CMSG_CMS_SIGNER_INFO *in)
{
    DWORD size = sizeof(CERT_INFO), rdnSize = 0;
    BOOL ret;

    FUNC4("(%p, %d, %p)\n", pvData, pvData ? *pcbData : 0, in);

    if (in->SignerId.dwIdChoice == CERT_ID_ISSUER_SERIAL_NUMBER)
    {
        size += in->SignerId.u.IssuerSerialNumber.Issuer.cbData;
        size += in->SignerId.u.IssuerSerialNumber.SerialNumber.cbData;
    }
    else
    {
        rdnSize = FUNC2(&in->SignerId.u.KeyId);
        size += rdnSize;
    }
    if (!pvData)
    {
        *pcbData = size;
        ret = TRUE;
    }
    else if (*pcbData < size)
    {
        *pcbData = size;
        FUNC3(ERROR_MORE_DATA);
        ret = FALSE;
    }
    else
    {
        LPBYTE nextData = (BYTE *)pvData + sizeof(CERT_INFO);
        CERT_INFO *out = pvData;

        FUNC5(out, 0, sizeof(CERT_INFO));
        if (in->SignerId.dwIdChoice == CERT_ID_ISSUER_SERIAL_NUMBER)
        {
            FUNC0(&out->Issuer,
             &in->SignerId.u.IssuerSerialNumber.Issuer, &nextData);
            FUNC0(&out->SerialNumber,
             &in->SignerId.u.IssuerSerialNumber.SerialNumber, &nextData);
            ret = TRUE;
        }
        else
            ret = FUNC1(&out->Issuer, &out->SerialNumber,
             &in->SignerId.u.KeyId, rdnSize, &nextData);
    }
    FUNC4("returning %d\n", ret);
    return ret;
}
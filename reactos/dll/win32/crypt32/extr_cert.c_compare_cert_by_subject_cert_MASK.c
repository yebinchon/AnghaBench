#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  Issuer; int /*<<< orphan*/  SerialNumber; } ;
struct TYPE_6__ {TYPE_1__* pCertInfo; int /*<<< orphan*/  dwCertEncodingType; } ;
struct TYPE_5__ {int /*<<< orphan*/  Issuer; int /*<<< orphan*/  SerialNumber; int /*<<< orphan*/  Subject; } ;
typedef  TYPE_2__* PCCERT_CONTEXT ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  TYPE_3__ CERT_INFO ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__) ; 

__attribute__((used)) static BOOL FUNC3(PCCERT_CONTEXT pCertContext,
 DWORD dwType, DWORD dwFlags, const void *pvPara)
{
    CERT_INFO *pCertInfo = (CERT_INFO *)pvPara;
    BOOL ret;

    /* Matching serial number and subject match.. */
    ret = FUNC0(pCertContext->dwCertEncodingType,
     &pCertContext->pCertInfo->Subject, &pCertInfo->Issuer);
    if (ret)
        ret = FUNC1(&pCertContext->pCertInfo->SerialNumber,
         &pCertInfo->SerialNumber);
    else
    {
        /* failing that, if the serial number and issuer match, we match */
        ret = FUNC1(&pCertContext->pCertInfo->SerialNumber,
         &pCertInfo->SerialNumber);
        if (ret)
            ret = FUNC0(pCertContext->dwCertEncodingType,
             &pCertContext->pCertInfo->Issuer, &pCertInfo->Issuer);
    }
    FUNC2("returning %d\n", ret);
    return ret;
}
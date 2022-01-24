#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* pCrlInfo; int /*<<< orphan*/  dwCertEncodingType; } ;
struct TYPE_4__ {int /*<<< orphan*/  Issuer; } ;
typedef  TYPE_2__* PCCRL_CONTEXT ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRUE ; 

__attribute__((used)) static BOOL FUNC1(PCCRL_CONTEXT pCrlContext, DWORD dwType,
 DWORD dwFlags, const void *pvPara)
{
    BOOL ret;

    if (pvPara)
    {
        PCCRL_CONTEXT crl = pvPara;

        ret = FUNC0(pCrlContext->dwCertEncodingType,
         &pCrlContext->pCrlInfo->Issuer, &crl->pCrlInfo->Issuer);
    }
    else
        ret = TRUE;
    return ret;
}
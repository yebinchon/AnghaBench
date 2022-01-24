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
struct TYPE_4__ {scalar_t__ pCryptProviderData; } ;
struct TYPE_5__ {int /*<<< orphan*/  idxCert; int /*<<< orphan*/  idxCounterSigner; int /*<<< orphan*/  fCounterSigner; int /*<<< orphan*/  idxSigner; TYPE_1__ u; } ;
typedef  TYPE_2__* PCCRYPTUI_VIEWCERTIFICATE_STRUCTW ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  CRYPT_PROVIDER_SGNR ;
typedef  int /*<<< orphan*/  CRYPT_PROVIDER_DATA ;
typedef  int /*<<< orphan*/  CRYPT_PROVIDER_CERT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IDC_CERTIFICATESTATUSTEXT ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(HWND hwnd,
 PCCRYPTUI_VIEWCERTIFICATE_STRUCTW pCertViewInfo)
{
    HWND status = FUNC0(hwnd, IDC_CERTIFICATESTATUSTEXT);
    CRYPT_PROVIDER_SGNR *provSigner = FUNC2(
     (CRYPT_PROVIDER_DATA *)pCertViewInfo->u.pCryptProviderData,
     pCertViewInfo->idxSigner, pCertViewInfo->fCounterSigner,
     pCertViewInfo->idxCounterSigner);
    CRYPT_PROVIDER_CERT *provCert = FUNC1(provSigner,
     pCertViewInfo->idxCert);

    FUNC3(status, provCert);
}
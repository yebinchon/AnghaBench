#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_8__ ;
typedef  struct TYPE_21__   TYPE_7__ ;
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  parFmt ;
typedef  int /*<<< orphan*/  charFmt ;
struct TYPE_22__ {int cbSize; int /*<<< orphan*/  dwEffects; int /*<<< orphan*/  dwMask; } ;
struct TYPE_21__ {scalar_t__ fSelfSigned; int /*<<< orphan*/  fTrustedRoot; } ;
struct TYPE_20__ {int csCertChain; scalar_t__ dwError; TYPE_3__* pChainContext; TYPE_7__* pasCertChain; } ;
struct TYPE_19__ {int cbSize; int /*<<< orphan*/  dxStartIndent; int /*<<< orphan*/  dwMask; } ;
struct TYPE_15__ {scalar_t__ pCryptProviderData; } ;
struct TYPE_18__ {int /*<<< orphan*/  idxCounterSigner; int /*<<< orphan*/  fCounterSigner; int /*<<< orphan*/  idxSigner; TYPE_1__ u; } ;
struct TYPE_16__ {int dwErrorStatus; } ;
struct TYPE_17__ {TYPE_2__ TrustStatus; } ;
typedef  TYPE_4__* PCCRYPTUI_VIEWCERTIFICATE_STRUCTW ;
typedef  TYPE_5__ PARAFORMAT2 ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int /*<<< orphan*/  HWND ;
typedef  TYPE_6__ CRYPT_PROVIDER_SGNR ;
typedef  int /*<<< orphan*/  CRYPT_PROVIDER_DATA ;
typedef  TYPE_7__ CRYPT_PROVIDER_CERT ;
typedef  TYPE_8__ CHARFORMATW ;

/* Variables and functions */
 int CERT_TRUST_IS_PARTIAL_CHAIN ; 
 int /*<<< orphan*/  CFE_BOLD ; 
 int /*<<< orphan*/  CFM_BOLD ; 
 int /*<<< orphan*/  EM_SETCHARFORMAT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IDB_CERT ; 
 int /*<<< orphan*/  IDB_CERT_ERROR ; 
 int /*<<< orphan*/  IDB_CERT_WARNING ; 
 int /*<<< orphan*/  IDC_CERTIFICATE_ICON ; 
 int /*<<< orphan*/  IDC_CERTIFICATE_INFO ; 
 int /*<<< orphan*/  IDC_CERTIFICATE_STATUS ; 
 int /*<<< orphan*/  IDS_CERTIFICATEINFORMATION ; 
 int /*<<< orphan*/  IDS_CERT_INFO_BAD_SIG ; 
 int /*<<< orphan*/  IDS_CERT_INFO_PARTIAL_CHAIN ; 
 int /*<<< orphan*/  IDS_CERT_INFO_UNTRUSTED_CA ; 
 int /*<<< orphan*/  IDS_CERT_INFO_UNTRUSTED_ROOT ; 
 int /*<<< orphan*/  MY_INDENT ; 
 int /*<<< orphan*/  PFM_STARTINDENT ; 
 int /*<<< orphan*/  SCF_SELECTION ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ TRUST_E_CERT_SIGNATURE ; 
 TYPE_6__* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_8__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_4__*) ; 

__attribute__((used)) static void FUNC8(HWND hwnd,
 PCCRYPTUI_VIEWCERTIFICATE_STRUCTW pCertViewInfo)
{
    CHARFORMATW charFmt;
    PARAFORMAT2 parFmt;
    HWND icon = FUNC0(hwnd, IDC_CERTIFICATE_ICON);
    HWND text = FUNC0(hwnd, IDC_CERTIFICATE_INFO);
    CRYPT_PROVIDER_SGNR *provSigner = FUNC2(
     (CRYPT_PROVIDER_DATA *)pCertViewInfo->u.pCryptProviderData,
     pCertViewInfo->idxSigner, pCertViewInfo->fCounterSigner,
     pCertViewInfo->idxCounterSigner);
    CRYPT_PROVIDER_CERT *root =
     &provSigner->pasCertChain[provSigner->csCertChain - 1];

    if (!provSigner->pChainContext ||
     (provSigner->pChainContext->TrustStatus.dwErrorStatus &
     CERT_TRUST_IS_PARTIAL_CHAIN))
        FUNC3(icon, IDB_CERT_WARNING);
    else if (!root->fTrustedRoot)
        FUNC3(icon, IDB_CERT_ERROR);
    else
        FUNC3(icon, IDB_CERT);

    FUNC5(&charFmt, 0, sizeof(charFmt));
    charFmt.cbSize = sizeof(charFmt);
    charFmt.dwMask = CFM_BOLD;
    charFmt.dwEffects = CFE_BOLD;
    FUNC1(text, EM_SETCHARFORMAT, SCF_SELECTION, (LPARAM)&charFmt);
    /* FIXME: vertically center text */
    parFmt.cbSize = sizeof(parFmt);
    parFmt.dwMask = PFM_STARTINDENT;
    parFmt.dxStartIndent = MY_INDENT;
    FUNC4(text,
     IDS_CERTIFICATEINFORMATION, &parFmt);

    text = FUNC0(hwnd, IDC_CERTIFICATE_STATUS);
    FUNC1(text, EM_SETCHARFORMAT, SCF_SELECTION, (LPARAM)&charFmt);
    if (provSigner->dwError == TRUST_E_CERT_SIGNATURE)
        FUNC4(text,
         IDS_CERT_INFO_BAD_SIG, &parFmt);
    else if (!provSigner->pChainContext ||
     (provSigner->pChainContext->TrustStatus.dwErrorStatus &
     CERT_TRUST_IS_PARTIAL_CHAIN))
        FUNC4(text,
         IDS_CERT_INFO_PARTIAL_CHAIN, &parFmt);
    else if (!root->fTrustedRoot)
    {
        if (provSigner->csCertChain == 1 && root->fSelfSigned)
            FUNC4(text,
             IDS_CERT_INFO_UNTRUSTED_CA, &parFmt);
        else
            FUNC4(text,
             IDS_CERT_INFO_UNTRUSTED_ROOT, &parFmt);
    }
    else
    {
        FUNC7(text, pCertViewInfo);
        FUNC6(hwnd, pCertViewInfo);
    }
}
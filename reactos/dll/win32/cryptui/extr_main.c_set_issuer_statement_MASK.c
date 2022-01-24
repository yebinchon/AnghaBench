#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct IssuerStatement {void* userNotice; void* cps; } ;
typedef  int /*<<< orphan*/  ULONG_PTR ;
struct TYPE_12__ {int dwFlags; TYPE_2__* pCertContext; } ;
struct TYPE_10__ {int /*<<< orphan*/  cbData; int /*<<< orphan*/  pbData; } ;
struct TYPE_11__ {TYPE_3__ Value; int /*<<< orphan*/  pszObjId; } ;
struct TYPE_9__ {TYPE_1__* pCertInfo; } ;
struct TYPE_8__ {int /*<<< orphan*/  rgExtension; int /*<<< orphan*/  cExtension; } ;
typedef  TYPE_4__* PCERT_EXTENSION ;
typedef  TYPE_5__* PCCRYPTUI_VIEWCERTIFICATE_STRUCTW ;
typedef  void* LPWSTR ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  CRYPT_OBJID_BLOB ;
typedef  int /*<<< orphan*/  CERT_POLICIES_INFO ;

/* Variables and functions */
 int CRYPTUI_DISABLE_ISSUERSTATEMENT ; 
 int /*<<< orphan*/  CRYPT_DECODE_ALLOC_FLAG ; 
 TYPE_4__* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  DWLP_USER ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 struct IssuerStatement* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  IDC_ISSUERSTATEMENT ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  X509_ASN_ENCODING ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC9 (int /*<<< orphan*/ *) ; 
 void* FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  szOID_CERT_POLICIES ; 
 int /*<<< orphan*/  szOID_PKIX_POLICY_QUALIFIER_CPS ; 
 int /*<<< orphan*/  szOID_PKIX_POLICY_QUALIFIER_USERNOTICE ; 

__attribute__((used)) static void FUNC11(HWND hwnd,
 PCCRYPTUI_VIEWCERTIFICATE_STRUCTW pCertViewInfo)
{
    PCERT_EXTENSION policyExt;

    if (!(pCertViewInfo->dwFlags & CRYPTUI_DISABLE_ISSUERSTATEMENT) &&
     (policyExt = FUNC0(szOID_CERT_POLICIES,
     pCertViewInfo->pCertContext->pCertInfo->cExtension,
     pCertViewInfo->pCertContext->pCertInfo->rgExtension)))
    {
        CERT_POLICIES_INFO *policies;
        DWORD size;

        if (FUNC1(X509_ASN_ENCODING, policyExt->pszObjId,
         policyExt->Value.pbData, policyExt->Value.cbData,
         CRYPT_DECODE_ALLOC_FLAG, NULL, &policies, &size))
        {
            CRYPT_OBJID_BLOB *qualifier;
            LPWSTR cps = NULL, userNotice = NULL;

            if ((qualifier = FUNC8(policies,
             szOID_PKIX_POLICY_QUALIFIER_CPS)))
                cps = FUNC9(qualifier);
            if ((qualifier = FUNC8(policies,
             szOID_PKIX_POLICY_QUALIFIER_USERNOTICE)))
                userNotice = FUNC10(qualifier);
            if (cps || userNotice)
            {
                struct IssuerStatement *issuerStatement =
                 FUNC5(FUNC4(), 0, sizeof(struct IssuerStatement));

                if (issuerStatement)
                {
                    issuerStatement->cps = cps;
                    issuerStatement->userNotice = userNotice;
                    FUNC2(FUNC3(hwnd, IDC_ISSUERSTATEMENT), TRUE);
                    FUNC7(hwnd, DWLP_USER,
                     (ULONG_PTR)issuerStatement);
                }
            }
            FUNC6(policies);
        }
    }
}
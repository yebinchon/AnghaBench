
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct IssuerStatement {void* userNotice; void* cps; } ;
typedef int ULONG_PTR ;
struct TYPE_12__ {int dwFlags; TYPE_2__* pCertContext; } ;
struct TYPE_10__ {int cbData; int pbData; } ;
struct TYPE_11__ {TYPE_3__ Value; int pszObjId; } ;
struct TYPE_9__ {TYPE_1__* pCertInfo; } ;
struct TYPE_8__ {int rgExtension; int cExtension; } ;
typedef TYPE_4__* PCERT_EXTENSION ;
typedef TYPE_5__* PCCRYPTUI_VIEWCERTIFICATE_STRUCTW ;
typedef void* LPWSTR ;
typedef int HWND ;
typedef int DWORD ;
typedef int CRYPT_OBJID_BLOB ;
typedef int CERT_POLICIES_INFO ;


 int CRYPTUI_DISABLE_ISSUERSTATEMENT ;
 int CRYPT_DECODE_ALLOC_FLAG ;
 TYPE_4__* CertFindExtension (int ,int ,int ) ;
 scalar_t__ CryptDecodeObjectEx (int ,int ,int ,int ,int ,int *,int **,int *) ;
 int DWLP_USER ;
 int EnableWindow (int ,int ) ;
 int GetDlgItem (int ,int ) ;
 int GetProcessHeap () ;
 struct IssuerStatement* HeapAlloc (int ,int ,int) ;
 int IDC_ISSUERSTATEMENT ;
 int LocalFree (int *) ;
 int SetWindowLongPtrW (int ,int ,int ) ;
 int TRUE ;
 int X509_ASN_ENCODING ;
 int * find_policy_qualifier (int *,int ) ;
 void* get_cps_str_from_qualifier (int *) ;
 void* get_user_notice_from_qualifier (int *) ;
 int szOID_CERT_POLICIES ;
 int szOID_PKIX_POLICY_QUALIFIER_CPS ;
 int szOID_PKIX_POLICY_QUALIFIER_USERNOTICE ;

__attribute__((used)) static void set_issuer_statement(HWND hwnd,
 PCCRYPTUI_VIEWCERTIFICATE_STRUCTW pCertViewInfo)
{
    PCERT_EXTENSION policyExt;

    if (!(pCertViewInfo->dwFlags & CRYPTUI_DISABLE_ISSUERSTATEMENT) &&
     (policyExt = CertFindExtension(szOID_CERT_POLICIES,
     pCertViewInfo->pCertContext->pCertInfo->cExtension,
     pCertViewInfo->pCertContext->pCertInfo->rgExtension)))
    {
        CERT_POLICIES_INFO *policies;
        DWORD size;

        if (CryptDecodeObjectEx(X509_ASN_ENCODING, policyExt->pszObjId,
         policyExt->Value.pbData, policyExt->Value.cbData,
         CRYPT_DECODE_ALLOC_FLAG, ((void*)0), &policies, &size))
        {
            CRYPT_OBJID_BLOB *qualifier;
            LPWSTR cps = ((void*)0), userNotice = ((void*)0);

            if ((qualifier = find_policy_qualifier(policies,
             szOID_PKIX_POLICY_QUALIFIER_CPS)))
                cps = get_cps_str_from_qualifier(qualifier);
            if ((qualifier = find_policy_qualifier(policies,
             szOID_PKIX_POLICY_QUALIFIER_USERNOTICE)))
                userNotice = get_user_notice_from_qualifier(qualifier);
            if (cps || userNotice)
            {
                struct IssuerStatement *issuerStatement =
                 HeapAlloc(GetProcessHeap(), 0, sizeof(struct IssuerStatement));

                if (issuerStatement)
                {
                    issuerStatement->cps = cps;
                    issuerStatement->userNotice = userNotice;
                    EnableWindow(GetDlgItem(hwnd, IDC_ISSUERSTATEMENT), TRUE);
                    SetWindowLongPtrW(hwnd, DWLP_USER,
                     (ULONG_PTR)issuerStatement);
                }
            }
            LocalFree(policies);
        }
    }
}

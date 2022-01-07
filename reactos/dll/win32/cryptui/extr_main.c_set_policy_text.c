
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int parFmt ;
struct TYPE_6__ {int cbSize; int dxStartIndent; int dwMask; } ;
struct TYPE_5__ {size_t cPurposes; int pCertContext; int * rgszPurposes; } ;
typedef TYPE_1__* PCCRYPTUI_VIEWCERTIFICATE_STRUCTW ;
typedef TYPE_2__ PARAFORMAT2 ;
typedef int HWND ;
typedef size_t DWORD ;
typedef scalar_t__ BOOL ;


 scalar_t__ FALSE ;
 int IDS_CERT_INFO_BAD_PURPOSES ;
 int MY_INDENT ;
 int PFM_STARTINDENT ;
 scalar_t__ TRUE ;
 int add_string_resource_with_paraformat_to_control (int ,int ,TYPE_2__*) ;
 int display_app_usages (int ,int ,scalar_t__*) ;
 scalar_t__ display_cert_usages (int ,int ,scalar_t__*) ;
 int strcmp (int ,int ) ;
 int szOID_ANY_APPLICATION_POLICY ;
 int szOID_ANY_CERT_POLICY ;

__attribute__((used)) static void set_policy_text(HWND text,
 PCCRYPTUI_VIEWCERTIFICATE_STRUCTW pCertViewInfo)
{
    BOOL includeCertUsages = FALSE, includeAppUsages = FALSE;
    BOOL badUsages = FALSE, anyUsageAdded = FALSE;

    if (pCertViewInfo->cPurposes)
    {
        DWORD i;

        for (i = 0; i < pCertViewInfo->cPurposes; i++)
        {
            if (!strcmp(pCertViewInfo->rgszPurposes[i], szOID_ANY_CERT_POLICY))
                includeCertUsages = TRUE;
            else if (!strcmp(pCertViewInfo->rgszPurposes[i],
             szOID_ANY_APPLICATION_POLICY))
                includeAppUsages = TRUE;
            else
                badUsages = TRUE;
        }
    }
    else
        includeAppUsages = includeCertUsages = TRUE;
    if (includeAppUsages)
        display_app_usages(text, pCertViewInfo->pCertContext, &anyUsageAdded);
    if (includeCertUsages)
        badUsages = display_cert_usages(text, pCertViewInfo->pCertContext,
         &anyUsageAdded);
    if (badUsages)
    {
        PARAFORMAT2 parFmt;

        parFmt.cbSize = sizeof(parFmt);
        parFmt.dwMask = PFM_STARTINDENT;
        parFmt.dxStartIndent = MY_INDENT;
        add_string_resource_with_paraformat_to_control(text,
         IDS_CERT_INFO_BAD_PURPOSES, &parFmt);
    }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int parFmt ;
typedef int charFmt ;
typedef char WCHAR ;
struct TYPE_11__ {int cbSize; void* dwEffects; int dwMask; } ;
struct TYPE_10__ {int cbSize; int dxStartIndent; int dwMask; } ;
struct TYPE_9__ {TYPE_1__* pCertInfo; } ;
struct TYPE_8__ {int NotAfter; int NotBefore; } ;
typedef TYPE_2__* PCCERT_CONTEXT ;
typedef TYPE_3__ PARAFORMAT2 ;
typedef int LPARAM ;
typedef int HWND ;
typedef TYPE_4__ CHARFORMATW ;


 void* CFE_BOLD ;
 int CFM_BOLD ;
 int EM_SETCHARFORMAT ;
 int GetDlgItem (int ,int ) ;
 int IDC_CERTIFICATE_NAMES ;
 int IDS_VALID_FROM ;
 int IDS_VALID_TO ;
 int MY_INDENT ;
 int PFM_STARTINDENT ;
 int SCF_SELECTION ;
 int SendMessageW (int ,int ,int ,int ) ;
 int add_date_string_to_control (int ,int *) ;
 int add_string_resource_to_control (int ,int ) ;
 int add_string_resource_with_paraformat_to_control (int ,int ,TYPE_3__*) ;
 int add_unformatted_text_to_control (int ,char*,int) ;
 int memset (TYPE_4__*,int ,int) ;

__attribute__((used)) static void set_cert_validity_period(HWND hwnd, PCCERT_CONTEXT cert)
{
    WCHAR nl = '\n';
    HWND text = GetDlgItem(hwnd, IDC_CERTIFICATE_NAMES);
    CHARFORMATW charFmt;
    PARAFORMAT2 parFmt;

    memset(&charFmt, 0, sizeof(charFmt));
    charFmt.cbSize = sizeof(charFmt);
    charFmt.dwMask = CFM_BOLD;
    charFmt.dwEffects = CFE_BOLD;
    SendMessageW(text, EM_SETCHARFORMAT, SCF_SELECTION, (LPARAM)&charFmt);
    parFmt.cbSize = sizeof(parFmt);
    parFmt.dwMask = PFM_STARTINDENT;
    parFmt.dxStartIndent = MY_INDENT * 3;
    add_string_resource_with_paraformat_to_control(text, IDS_VALID_FROM,
     &parFmt);
    charFmt.dwEffects = 0;
    SendMessageW(text, EM_SETCHARFORMAT, SCF_SELECTION, (LPARAM)&charFmt);
    add_date_string_to_control(text, &cert->pCertInfo->NotBefore);
    charFmt.dwEffects = CFE_BOLD;
    SendMessageW(text, EM_SETCHARFORMAT, SCF_SELECTION, (LPARAM)&charFmt);
    add_string_resource_to_control(text, IDS_VALID_TO);
    charFmt.dwEffects = 0;
    SendMessageW(text, EM_SETCHARFORMAT, SCF_SELECTION, (LPARAM)&charFmt);
    add_date_string_to_control(text, &cert->pCertInfo->NotAfter);
    add_unformatted_text_to_control(text, &nl, 1);
}

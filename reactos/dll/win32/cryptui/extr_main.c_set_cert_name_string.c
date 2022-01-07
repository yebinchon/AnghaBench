
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int parFmt ;
typedef int charFmt ;
typedef char WCHAR ;
struct TYPE_6__ {int cbSize; scalar_t__ dwEffects; int dwMask; } ;
struct TYPE_5__ {int cbSize; int dxStartIndent; int dwMask; } ;
typedef int PCCERT_CONTEXT ;
typedef TYPE_1__ PARAFORMAT2 ;
typedef int LPARAM ;
typedef int HWND ;
typedef int DWORD ;
typedef TYPE_2__ CHARFORMATW ;


 int CERT_NAME_SIMPLE_DISPLAY_TYPE ;
 scalar_t__ CFE_BOLD ;
 int CFM_BOLD ;
 int EM_SETCHARFORMAT ;
 int GetDlgItem (int ,int ) ;
 int IDC_CERTIFICATE_NAMES ;
 int MY_INDENT ;
 int PFM_STARTINDENT ;
 int SCF_SELECTION ;
 int SendMessageW (int ,int ,int ,int ) ;
 int add_cert_string_to_control (int ,int ,int ,int ) ;
 int add_string_resource_with_paraformat_to_control (int ,int,TYPE_1__*) ;
 int add_unformatted_text_to_control (int ,char*,int) ;
 int memset (TYPE_2__*,int ,int) ;

__attribute__((used)) static void set_cert_name_string(HWND hwnd, PCCERT_CONTEXT cert,
 DWORD nameFlags, int heading)
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
    add_string_resource_with_paraformat_to_control(text, heading, &parFmt);
    charFmt.dwEffects = 0;
    SendMessageW(text, EM_SETCHARFORMAT, SCF_SELECTION, (LPARAM)&charFmt);
    add_cert_string_to_control(text, cert, CERT_NAME_SIMPLE_DISPLAY_TYPE,
     nameFlags);
    add_unformatted_text_to_control(text, &nl, 1);
    add_unformatted_text_to_control(text, &nl, 1);
    add_unformatted_text_to_control(text, &nl, 1);

}

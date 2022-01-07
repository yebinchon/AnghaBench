
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_3__ {scalar_t__ dwSelectedProfileIndex; int dwProfileCount; } ;
typedef TYPE_1__* PPROFILEDATA ;
typedef int HWND ;
typedef scalar_t__ DWORD ;


 int EnableWindow (int ,int ) ;
 int FALSE ;
 int GetDlgItem (int ,int ) ;
 int IDC_HRDPROFCOPY ;
 int IDC_HRDPROFDEL ;
 int IDC_HRDPROFDWN ;
 int IDC_HRDPROFPROP ;
 int IDC_HRDPROFRENAME ;
 int IDC_HRDPROFUP ;
 int TRUE ;

__attribute__((used)) static
VOID
UpdateButtons(
    HWND hwndDlg,
    PPROFILEDATA pProfileData)
{
    EnableWindow(GetDlgItem(hwndDlg, IDC_HRDPROFPROP), (pProfileData->dwSelectedProfileIndex != (DWORD)-1) ? TRUE : FALSE);
    EnableWindow(GetDlgItem(hwndDlg, IDC_HRDPROFCOPY), (pProfileData->dwSelectedProfileIndex != (DWORD)-1) ? TRUE : FALSE);
    EnableWindow(GetDlgItem(hwndDlg, IDC_HRDPROFRENAME), (pProfileData->dwSelectedProfileIndex != (DWORD)-1) ? TRUE : FALSE);
    EnableWindow(GetDlgItem(hwndDlg, IDC_HRDPROFDEL), (pProfileData->dwSelectedProfileIndex != (DWORD)-1) ? TRUE : FALSE);

    if (pProfileData->dwProfileCount < 2)
    {
        EnableWindow(GetDlgItem(hwndDlg, IDC_HRDPROFUP), FALSE);
        EnableWindow(GetDlgItem(hwndDlg, IDC_HRDPROFDWN), FALSE);
    }
    else
    {
        EnableWindow(GetDlgItem(hwndDlg, IDC_HRDPROFUP),
                     (pProfileData->dwSelectedProfileIndex > 0) ? TRUE : FALSE);
        EnableWindow(GetDlgItem(hwndDlg, IDC_HRDPROFDWN),
                     (pProfileData->dwSelectedProfileIndex < pProfileData->dwProfileCount - 1) ? TRUE : FALSE);
    }
}

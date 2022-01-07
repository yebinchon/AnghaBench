
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ hIcon; } ;
typedef TYPE_1__* PLIC_CONTEXT ;
typedef int PCSTR ;
typedef int LPARAM ;
typedef int HWND ;
typedef int HRSRC ;
typedef int HGLOBAL ;
typedef int BOOL ;


 int EM_SETSEL ;
 int FALSE ;
 int FindResource (int ,int ,int ) ;
 int GetDlgItem (int ,int ) ;
 int ICON_SMALL ;
 int IDC_LICENCEEDIT ;
 int IDI_CPLSYSTEM ;
 int IMAGE_ICON ;
 scalar_t__ LoadImage (int ,int ,int ,int,int,int ) ;
 int LoadResource (int ,int ) ;
 int LockResource (int ) ;
 int MAKEINTRESOURCE (int ) ;
 int PostMessage (int ,int ,int,int ) ;
 int RC_LICENSE ;
 int RTDATA ;
 int SB_TOP ;
 int SendMessage (int ,int ,int ,int ) ;
 int SetDlgItemTextA (int ,int ,int ) ;
 int ShowLastWin32Error (int ) ;
 int TRUE ;
 int WM_SETICON ;
 int WM_VSCROLL ;
 int hApplet ;

__attribute__((used)) static BOOL
OnInitDialog(HWND hDlg, PLIC_CONTEXT pLicInfo)
{
    HRSRC hResInfo;
    HGLOBAL hResMem;
    PCSTR LicenseText;

    pLicInfo->hIcon = LoadImage(hApplet,
                                MAKEINTRESOURCE(IDI_CPLSYSTEM),
                                IMAGE_ICON,
                                16,
                                16,
                                0);

    SendMessage(hDlg,
                WM_SETICON,
                ICON_SMALL,
                (LPARAM)pLicInfo->hIcon);


    if (!(hResInfo = FindResource(hApplet,
                                  MAKEINTRESOURCE(RC_LICENSE),
                                  MAKEINTRESOURCE(RTDATA))) ||
        !(hResMem = LoadResource(hApplet, hResInfo)) ||
        !(LicenseText = LockResource(hResMem)))
    {
        ShowLastWin32Error(hDlg);
        return FALSE;
    }


    SetDlgItemTextA(hDlg,
                    IDC_LICENCEEDIT,
                    LicenseText);

    PostMessage(GetDlgItem(hDlg, IDC_LICENCEEDIT),
                EM_SETSEL,
                -1,
                0);
    PostMessage(GetDlgItem(hDlg, IDC_LICENCEEDIT), WM_VSCROLL, SB_TOP, 0);
    return TRUE;
}

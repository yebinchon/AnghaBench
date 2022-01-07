
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WPARAM ;
typedef int VOID ;
struct TYPE_3__ {scalar_t__ hMonospaceFont; scalar_t__ bDisplayWords; } ;
typedef TYPE_1__* PDETAILDATA ;
typedef int LPARAM ;
typedef int HWND ;
typedef scalar_t__ HANDLE ;
typedef int DWORD ;


 int AURL_ENABLEURL ;
 int BM_SETCHECK ;
 int BM_SETIMAGE ;
 int BST_CHECKED ;
 int COLOR_3DFACE ;
 int EM_AUTOURLDETECT ;
 int EM_GETEVENTMASK ;
 int EM_SETBKGNDCOLOR ;
 int EM_SETEVENTMASK ;
 int ENM_LINK ;
 int ENM_MOUSEEVENTS ;
 int GetSysColor (int ) ;
 int IDC_BYTESRADIO ;
 int IDC_COPY ;
 int IDC_EVENTDATAEDIT ;
 int IDC_EVENTTEXTEDIT ;
 int IDC_NEXT ;
 int IDC_PREVIOUS ;
 int IDC_WORDRADIO ;
 int IDI_COPY ;
 int IDI_NEXT ;
 int IDI_PREV ;
 scalar_t__ IMAGE_ICON ;
 int LR_DEFAULTCOLOR ;
 scalar_t__ LoadImageW (int ,int ,scalar_t__,int,int,int ) ;
 int MAKEINTRESOURCEW (int ) ;
 int SendDlgItemMessageW (int ,int ,int ,int ,int) ;
 scalar_t__ TRUE ;
 int WM_SETFONT ;
 int hInst ;

__attribute__((used)) static
VOID
InitDetailsDlgCtrl(HWND hDlg, PDETAILDATA pData)
{
    DWORD dwMask;

    HANDLE nextIcon = LoadImageW(hInst, MAKEINTRESOURCEW(IDI_NEXT), IMAGE_ICON, 16, 16, LR_DEFAULTCOLOR);
    HANDLE prevIcon = LoadImageW(hInst, MAKEINTRESOURCEW(IDI_PREV), IMAGE_ICON, 16, 16, LR_DEFAULTCOLOR);
    HANDLE copyIcon = LoadImageW(hInst, MAKEINTRESOURCEW(IDI_COPY), IMAGE_ICON, 16, 16, LR_DEFAULTCOLOR);

    SendDlgItemMessageW(hDlg, IDC_NEXT, BM_SETIMAGE, (WPARAM)IMAGE_ICON, (LPARAM)nextIcon);
    SendDlgItemMessageW(hDlg, IDC_PREVIOUS, BM_SETIMAGE, (WPARAM)IMAGE_ICON, (LPARAM)prevIcon);
    SendDlgItemMessageW(hDlg, IDC_COPY, BM_SETIMAGE, (WPARAM)IMAGE_ICON, (LPARAM)copyIcon);


    SendDlgItemMessageW(hDlg, IDC_EVENTTEXTEDIT, EM_SETBKGNDCOLOR, 0, GetSysColor(COLOR_3DFACE));


    dwMask = SendDlgItemMessageW(hDlg, IDC_EVENTTEXTEDIT, EM_GETEVENTMASK, 0, 0);
    SendDlgItemMessageW(hDlg, IDC_EVENTTEXTEDIT, EM_SETEVENTMASK, 0, dwMask | ENM_LINK | ENM_MOUSEEVENTS);







    SendDlgItemMessageW(hDlg, IDC_EVENTTEXTEDIT, EM_AUTOURLDETECT, AURL_ENABLEURL , 0);



    SendDlgItemMessageW(hDlg, pData->bDisplayWords ? IDC_WORDRADIO : IDC_BYTESRADIO, BM_SETCHECK, BST_CHECKED, 0);
    SendDlgItemMessageW(hDlg, IDC_EVENTDATAEDIT, WM_SETFONT, (WPARAM)pData->hMonospaceFont, (LPARAM)TRUE);
}

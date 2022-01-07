
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int WPARAM ;
struct TYPE_4__ {scalar_t__ DisplayName; struct TYPE_4__* NextStyle; } ;
typedef TYPE_1__* PTHEME_STYLE ;
typedef int LPARAM ;
typedef int HWND ;


 int CB_ADDSTRING ;
 int CB_RESETCONTENT ;
 int CB_SETCURSEL ;
 int CB_SETITEMDATA ;
 int GetDlgItem (int ,int) ;
 int SendMessage (int ,int ,int,int ) ;

__attribute__((used)) static void
AppearancePage_ShowStyles(HWND hwndDlg, int nIDDlgItem, PTHEME_STYLE pStyles, PTHEME_STYLE pActiveStyle)
{
    int iListIndex;
    HWND hwndList = GetDlgItem(hwndDlg, nIDDlgItem);
    PTHEME_STYLE pCurrentStyle;

    SendMessage(hwndList, CB_RESETCONTENT , 0, 0);

    for (pCurrentStyle = pStyles;
         pCurrentStyle;
         pCurrentStyle = pCurrentStyle->NextStyle)
    {
        iListIndex = SendMessage(hwndList, CB_ADDSTRING, 0, (LPARAM)pCurrentStyle->DisplayName);
        SendMessage(hwndList, CB_SETITEMDATA, iListIndex, (LPARAM)pCurrentStyle);
        if (pCurrentStyle == pActiveStyle)
        {
            SendMessage(hwndList, CB_SETCURSEL, (WPARAM)iListIndex, 0);
        }
    }
}

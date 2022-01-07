
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int WPARAM ;
typedef int VOID ;
struct TYPE_2__ {scalar_t__ hwndFrom; int code; } ;
typedef TYPE_1__* LPNMHDR ;
typedef int LPARAM ;
typedef scalar_t__ HWND ;


 int EnableWindow (scalar_t__,int ) ;
 int FALSE ;
 scalar_t__ GetDlgItem (scalar_t__,int ) ;
 int IDC_CONNECTEDDRIVELIST ;
 int ID_OK ;

 int ListView_GetSelectedCount (scalar_t__) ;
 int TRUE ;

VOID UpdateButtonStatus(WPARAM wParam, LPARAM lParam, HWND hDlg)
{
    LPNMHDR pnmh = (LPNMHDR)lParam;
    HWND hListView = GetDlgItem(hDlg, IDC_CONNECTEDDRIVELIST);
    HWND hOkButton = GetDlgItem(hDlg, ID_OK);

    if (pnmh->hwndFrom == hListView)
    {
        switch (pnmh->code)
        {
            case 128:
                if (ListView_GetSelectedCount(hListView))
                {
                    EnableWindow(hOkButton, TRUE);
                }
                else
                {
                    EnableWindow(hOkButton, FALSE);
                }
                break;
        }
    }
}

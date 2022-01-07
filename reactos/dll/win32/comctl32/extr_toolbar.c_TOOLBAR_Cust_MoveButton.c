
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int tbInfo; int tbHwnd; } ;
struct TYPE_6__ {int hdr; scalar_t__ iItem; } ;
struct TYPE_5__ {int btn; } ;
typedef TYPE_1__* PCUSTOMBUTTON ;
typedef TYPE_2__ NMTOOLBARW ;
typedef int NMHDR ;
typedef int LPARAM ;
typedef scalar_t__ INT ;
typedef int HWND ;
typedef TYPE_3__ CUSTDLG_INFO ;


 int EnableWindow (int ,int ) ;
 int FALSE ;
 int GetDlgItem (int ,int ) ;
 int IDC_MOVEDN_BTN ;
 int IDC_MOVEUP_BTN ;
 int IDC_TOOLBARBTN_LBOX ;
 int LB_DELETESTRING ;
 int LB_GETCOUNT ;
 int LB_GETITEMDATA ;
 int LB_INSERTSTRING ;
 int LB_SETCURSEL ;
 int LB_SETITEMDATA ;
 int SendMessageW (int ,int ,scalar_t__,int ) ;
 int TBN_QUERYINSERT ;
 int TBN_TOOLBARCHANGE ;
 int TB_DELETEBUTTON ;
 int TB_INSERTBUTTONW ;
 scalar_t__ TOOLBAR_SendNotify (int *,int ,int ) ;
 int TRACE (char*,scalar_t__,scalar_t__) ;
 int TRUE ;

__attribute__((used)) static void TOOLBAR_Cust_MoveButton(const CUSTDLG_INFO *custInfo, HWND hwnd, INT nIndexFrom, INT nIndexTo)
{
    NMTOOLBARW nmtb;

 TRACE("index from %d, index to %d\n", nIndexFrom, nIndexTo);

    if (nIndexFrom == nIndexTo)
        return;



    nmtb.iItem = nIndexFrom;
    if (TOOLBAR_SendNotify(&nmtb.hdr, custInfo->tbInfo, TBN_QUERYINSERT))
    {
        PCUSTOMBUTTON btnInfo;
        NMHDR hdr;
        HWND hwndList = GetDlgItem(hwnd, IDC_TOOLBARBTN_LBOX);
        int count = SendMessageW(hwndList, LB_GETCOUNT, 0, 0);

        btnInfo = (PCUSTOMBUTTON)SendMessageW(hwndList, LB_GETITEMDATA, nIndexFrom, 0);

        SendMessageW(hwndList, LB_DELETESTRING, nIndexFrom, 0);
        SendMessageW(hwndList, LB_INSERTSTRING, nIndexTo, 0);
        SendMessageW(hwndList, LB_SETITEMDATA, nIndexTo, (LPARAM)btnInfo);
        SendMessageW(hwndList, LB_SETCURSEL, nIndexTo, 0);

        if (nIndexTo <= 0)
            EnableWindow(GetDlgItem(hwnd,IDC_MOVEUP_BTN), FALSE);
        else
            EnableWindow(GetDlgItem(hwnd,IDC_MOVEUP_BTN), TRUE);


        if (nIndexTo >= (count - 2))
            EnableWindow(GetDlgItem(hwnd,IDC_MOVEDN_BTN), FALSE);
        else
            EnableWindow(GetDlgItem(hwnd,IDC_MOVEDN_BTN), TRUE);

        SendMessageW(custInfo->tbHwnd, TB_DELETEBUTTON, nIndexFrom, 0);
        SendMessageW(custInfo->tbHwnd, TB_INSERTBUTTONW, nIndexTo, (LPARAM)&(btnInfo->btn));

        TOOLBAR_SendNotify(&hdr, custInfo->tbInfo, TBN_TOOLBARCHANGE);
    }
}

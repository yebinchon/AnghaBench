
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int tbInfo; int tbHwnd; } ;
struct TYPE_8__ {int fsStyle; } ;
struct TYPE_9__ {TYPE_1__ btn; } ;
typedef TYPE_2__* PCUSTOMBUTTON ;
typedef int NMHDR ;
typedef int INT ;
typedef int HWND ;
typedef TYPE_3__ CUSTDLG_INFO ;


 int BTNS_SEP ;
 int Free (TYPE_2__*) ;
 int GetDlgItem (int ,int ) ;
 int IDC_TOOLBARBTN_LBOX ;
 int LB_DELETESTRING ;
 int LB_GETITEMDATA ;
 int LB_SETCURSEL ;
 scalar_t__ SendMessageW (int ,int ,int ,int ) ;
 int TBN_TOOLBARCHANGE ;
 int TB_DELETEBUTTON ;
 int TOOLBAR_Cust_InsertAvailButton (int ,TYPE_2__*) ;
 scalar_t__ TOOLBAR_IsButtonRemovable (int ,int ,TYPE_2__*) ;
 int TOOLBAR_SendNotify (int *,int ,int ) ;
 int TRACE (char*,int ) ;

__attribute__((used)) static void TOOLBAR_Cust_RemoveButton(const CUSTDLG_INFO *custInfo, HWND hwnd, INT index)
{
    PCUSTOMBUTTON btnInfo;
    HWND hwndList = GetDlgItem(hwnd, IDC_TOOLBARBTN_LBOX);

    TRACE("Remove: index %d\n", index);

    btnInfo = (PCUSTOMBUTTON)SendMessageW(hwndList, LB_GETITEMDATA, index, 0);


    if (TOOLBAR_IsButtonRemovable(custInfo->tbInfo, index, btnInfo))
    {
        NMHDR hdr;

        SendMessageW(hwndList, LB_DELETESTRING, index, 0);
        SendMessageW(hwndList, LB_SETCURSEL, index , 0);

        SendMessageW(custInfo->tbHwnd, TB_DELETEBUTTON, index, 0);


        if (!(btnInfo->btn.fsStyle & BTNS_SEP))
            TOOLBAR_Cust_InsertAvailButton(hwnd, btnInfo);
        else
            Free(btnInfo);

        TOOLBAR_SendNotify(&hdr, custInfo->tbInfo, TBN_TOOLBARCHANGE);
    }
}

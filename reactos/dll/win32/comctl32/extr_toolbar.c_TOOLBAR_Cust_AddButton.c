
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int tbInfo; int tbHwnd; } ;
struct TYPE_7__ {int iItem; int hdr; } ;
struct TYPE_6__ {int btn; } ;
typedef TYPE_1__* PCUSTOMBUTTON ;
typedef TYPE_2__ NMTOOLBARW ;
typedef int NMHDR ;
typedef int LPARAM ;
typedef int INT ;
typedef int HWND ;
typedef int CUSTOMBUTTON ;
typedef TYPE_3__ CUSTDLG_INFO ;


 TYPE_1__* Alloc (int) ;
 int GetDlgItem (int ,int ) ;
 int IDC_AVAILBTN_LBOX ;
 int IDC_TOOLBARBTN_LBOX ;
 int LB_DELETESTRING ;
 int LB_GETCOUNT ;
 int LB_GETITEMDATA ;
 int LB_INSERTSTRING ;
 int LB_SETCURSEL ;
 int LB_SETITEMDATA ;
 int SendMessageW (int ,int ,int,int ) ;
 int TBN_QUERYINSERT ;
 int TBN_TOOLBARCHANGE ;
 int TB_INSERTBUTTONW ;
 scalar_t__ TOOLBAR_SendNotify (int *,int ,int ) ;
 int TRACE (char*,int,int) ;

__attribute__((used)) static void TOOLBAR_Cust_AddButton(const CUSTDLG_INFO *custInfo, HWND hwnd, INT nIndexAvail, INT nIndexTo)
{
    NMTOOLBARW nmtb;

    TRACE("Add: nIndexAvail %d, nIndexTo %d\n", nIndexAvail, nIndexTo);



    nmtb.iItem = nIndexAvail;
    if (TOOLBAR_SendNotify(&nmtb.hdr, custInfo->tbInfo, TBN_QUERYINSERT))
    {
        PCUSTOMBUTTON btnInfo;
        NMHDR hdr;
        HWND hwndList = GetDlgItem(hwnd, IDC_TOOLBARBTN_LBOX);
        HWND hwndAvail = GetDlgItem(hwnd, IDC_AVAILBTN_LBOX);
        int count = SendMessageW(hwndAvail, LB_GETCOUNT, 0, 0);

        btnInfo = (PCUSTOMBUTTON)SendMessageW(hwndAvail, LB_GETITEMDATA, nIndexAvail, 0);

        if (nIndexAvail != 0)
        {

            SendMessageW(hwndAvail, LB_DELETESTRING, nIndexAvail, 0);
            if (nIndexAvail == count-1)
                SendMessageW(hwndAvail, LB_SETCURSEL, nIndexAvail-1 , 0);
            else
                SendMessageW(hwndAvail, LB_SETCURSEL, nIndexAvail , 0);
        }
        else
        {
            PCUSTOMBUTTON btnNew;


            btnNew = Alloc(sizeof(CUSTOMBUTTON));
            *btnNew = *btnInfo;
            btnInfo = btnNew;
        }


        SendMessageW(hwndList, LB_INSERTSTRING, nIndexTo, 0);
        SendMessageW(hwndList, LB_SETITEMDATA, nIndexTo, (LPARAM)btnInfo);

        SendMessageW(custInfo->tbHwnd, TB_INSERTBUTTONW, nIndexTo, (LPARAM)&(btnInfo->btn));

        TOOLBAR_SendNotify(&hdr, custInfo->tbInfo, TBN_TOOLBARCHANGE);
    }
}

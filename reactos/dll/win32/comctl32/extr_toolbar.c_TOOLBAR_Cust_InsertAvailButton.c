
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ idCommand; } ;
struct TYPE_5__ {TYPE_1__ btn; int text; } ;
typedef TYPE_2__* PCUSTOMBUTTON ;
typedef int LPARAM ;
typedef int HWND ;


 int GetDlgItem (int ,int ) ;
 int IDC_AVAILBTN_LBOX ;
 int LB_ADDSTRING ;
 int LB_GETCOUNT ;
 int LB_GETITEMDATA ;
 int LB_INSERTSTRING ;
 int LB_SETITEMDATA ;
 int SendMessageW (int ,int ,int,int ) ;
 int TRACE (char*,int ,scalar_t__) ;
 int debugstr_w (int ) ;

__attribute__((used)) static void TOOLBAR_Cust_InsertAvailButton(HWND hwnd, PCUSTOMBUTTON btnInfoNew)
{
    int i;
    int count;
    PCUSTOMBUTTON btnInfo;
    HWND hwndAvail = GetDlgItem(hwnd, IDC_AVAILBTN_LBOX);

    TRACE("button %s, idCommand %d\n", debugstr_w(btnInfoNew->text), btnInfoNew->btn.idCommand);

    count = SendMessageW(hwndAvail, LB_GETCOUNT, 0, 0);


    for (i = 1; i < count; i++)
    {
        btnInfo = (PCUSTOMBUTTON)SendMessageW(hwndAvail, LB_GETITEMDATA, i, 0);
        if (btnInfoNew->btn.idCommand < btnInfo->btn.idCommand)
        {
            i = SendMessageW(hwndAvail, LB_INSERTSTRING, i, 0);
            SendMessageW(hwndAvail, LB_SETITEMDATA, i, (LPARAM)btnInfoNew);
            return;
        }
    }

    i = SendMessageW(hwndAvail, LB_ADDSTRING, 0, 0);
    SendMessageW(hwndAvail, LB_SETITEMDATA, i, (LPARAM)btnInfoNew);
}

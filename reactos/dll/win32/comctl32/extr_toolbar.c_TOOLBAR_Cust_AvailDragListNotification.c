
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int uNotification; int ptCursor; } ;
typedef int POINT ;
typedef int LRESULT ;
typedef int INT ;
typedef int HWND ;
typedef TYPE_1__ DRAGLISTINFO ;
typedef int CUSTDLG_INFO ;


 int ChildWindowFromPoint (int ,int ) ;


 int DL_COPYCURSOR ;


 int DL_STOPCURSOR ;
 int DrawInsert (int ,int ,int) ;
 int GetDlgItem (int ,int ) ;
 int IDC_AVAILBTN_LBOX ;
 int IDC_TOOLBARBTN_LBOX ;
 int LBItemFromPt (int ,int ,int ) ;
 int LB_GETCOUNT ;
 int LB_GETCURSEL ;
 int MapWindowPoints (int *,int ,int *,int) ;
 int SendDlgItemMessageW (int ,int ,int ,int ,int ) ;
 int SendMessageW (int ,int ,int ,int ) ;
 int TOOLBAR_Cust_AddButton (int const*,int ,int,int) ;
 int TRUE ;

__attribute__((used)) static LRESULT TOOLBAR_Cust_AvailDragListNotification(const CUSTDLG_INFO *custInfo, HWND hwnd,
                                                      const DRAGLISTINFO *pDLI)
{
    HWND hwndList = GetDlgItem(hwnd, IDC_TOOLBARBTN_LBOX);
    switch (pDLI->uNotification)
    {
    case 131:
        return TRUE;
    case 129:
    {
        INT nCurrentItem = LBItemFromPt(hwndList, pDLI->ptCursor, TRUE);
        INT nCount = SendMessageW(hwndList, LB_GETCOUNT, 0, 0);

        if ((nCurrentItem >= 0) && (nCurrentItem < nCount))
        {
            DrawInsert(hwnd, hwndList, nCurrentItem);

            return DL_COPYCURSOR;
        }


        if (nCurrentItem < 0)
        {
            POINT ptWindow = pDLI->ptCursor;
            HWND hwndListAvail = GetDlgItem(hwnd, IDC_AVAILBTN_LBOX);
            MapWindowPoints(((void*)0), hwnd, &ptWindow, 1);

            if (ChildWindowFromPoint(hwnd, ptWindow) == hwndListAvail)

                return DL_COPYCURSOR;
        }

        DrawInsert(hwnd, hwndList, -1);
        return DL_STOPCURSOR;
    }
    case 128:
    {
        INT nIndexTo = LBItemFromPt(hwndList, pDLI->ptCursor, TRUE);
        INT nCount = SendMessageW(hwndList, LB_GETCOUNT, 0, 0);
        INT nIndexFrom = SendDlgItemMessageW(hwnd, IDC_AVAILBTN_LBOX, LB_GETCURSEL, 0, 0);
        if ((nIndexTo >= 0) && (nIndexTo < nCount))
        {

            DrawInsert(hwnd, hwndList, -1);

            TOOLBAR_Cust_AddButton(custInfo, hwnd, nIndexFrom, nIndexTo);
        }
    }
    case 130:

        DrawInsert(hwnd, hwndList, -1);
        break;
    }
    return 0;
}

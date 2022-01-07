
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
 int FALSE ;
 int GetDlgItem (int ,int ) ;
 int IDC_AVAILBTN_LBOX ;
 int IDC_TOOLBARBTN_LBOX ;
 int LBItemFromPt (int ,int ,int ) ;
 int LB_GETCOUNT ;
 int LB_GETCURSEL ;
 int MapWindowPoints (int *,int ,int *,int) ;
 int SendMessageW (int ,int ,int ,int ) ;
 int TOOLBAR_Cust_MoveButton (int const*,int ,int,int) ;
 int TOOLBAR_Cust_RemoveButton (int const*,int ,int) ;
 int TRUE ;

__attribute__((used)) static LRESULT TOOLBAR_Cust_ToolbarDragListNotification(const CUSTDLG_INFO *custInfo, HWND hwnd,
                                                        const DRAGLISTINFO *pDLI)
{
    HWND hwndList = GetDlgItem(hwnd, IDC_TOOLBARBTN_LBOX);
    switch (pDLI->uNotification)
    {
    case 131:
    {
        INT nCurrentItem = LBItemFromPt(hwndList, pDLI->ptCursor, TRUE);
        INT nCount = SendMessageW(hwndList, LB_GETCOUNT, 0, 0);

        if (nCurrentItem >= (nCount - 1)) return FALSE;
        return TRUE;
    }
    case 129:
    {
        INT nCurrentItem = LBItemFromPt(hwndList, pDLI->ptCursor, TRUE);
        INT nCount = SendMessageW(hwndList, LB_GETCOUNT, 0, 0);

        if ((nCurrentItem >= 0) && (nCurrentItem < (nCount - 1)))
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
        INT nIndexFrom = SendMessageW(hwndList, LB_GETCURSEL, 0, 0);
        INT nCount = SendMessageW(hwndList, LB_GETCOUNT, 0, 0);
        if ((nIndexTo >= 0) && (nIndexTo < (nCount - 1)))
        {

            DrawInsert(hwnd, hwndList, -1);

            TOOLBAR_Cust_MoveButton(custInfo, hwnd, nIndexFrom, nIndexTo);
        }

        if (nIndexTo < 0)
        {
            POINT ptWindow = pDLI->ptCursor;
            HWND hwndListAvail = GetDlgItem(hwnd, IDC_AVAILBTN_LBOX);
            MapWindowPoints(((void*)0), hwnd, &ptWindow, 1);

            if (ChildWindowFromPoint(hwnd, ptWindow) == hwndListAvail)
                TOOLBAR_Cust_RemoveButton(custInfo, hwnd, nIndexFrom);
        }
        break;
    }
    case 130:

        DrawInsert(hwnd, hwndList, -1);
        break;
    }

    return 0;
}

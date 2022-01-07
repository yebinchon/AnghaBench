
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int bottom; int right; scalar_t__ left; scalar_t__ top; } ;
typedef TYPE_1__ RECT ;
typedef int LPPOINT ;
typedef int INT ;
typedef scalar_t__ HWND ;
typedef scalar_t__ BOOL ;


 int GW_CHILD ;
 int GW_HWNDNEXT ;
 int GetClientRect (scalar_t__,TYPE_1__*) ;
 scalar_t__ GetDlgItem (scalar_t__,int ) ;
 scalar_t__ GetWindow (scalar_t__,int ) ;
 int GetWindowRect (scalar_t__,TYPE_1__*) ;
 int IDCANCEL ;
 int MapWindowPoints (int ,scalar_t__,int ,int) ;
 int SWP_NOMOVE ;
 int SWP_NOSIZE ;
 int SWP_NOZORDER ;
 int SetRectEmpty (TYPE_1__*) ;
 int SetWindowPos (scalar_t__,int ,scalar_t__,scalar_t__,int,int,int) ;
 int TRACE (char*,int ,int ,int ) ;
 int pshHelp ;
 int stc32 ;
 int wine_dbgstr_rect (TYPE_1__*) ;

__attribute__((used)) static void ArrangeCtrlPositions(HWND hwndChildDlg, HWND hwndParentDlg, BOOL hide_help)
{
    HWND hwndChild, hwndStc32;
    RECT rectParent, rectChild, rectStc32;
    INT help_fixup = 0;
    int chgx, chgy;




     if (hide_help)
     {
         RECT rectHelp, rectCancel;
         GetWindowRect(GetDlgItem(hwndParentDlg, pshHelp), &rectHelp);
         GetWindowRect(GetDlgItem(hwndParentDlg, IDCANCEL), &rectCancel);



          help_fixup = rectHelp.bottom - rectCancel.bottom;
    }
    GetClientRect(hwndParentDlg, &rectParent);


    rectParent.bottom -= help_fixup;

    hwndStc32 = GetDlgItem(hwndChildDlg, stc32);
    if (hwndStc32)
    {
        GetWindowRect(hwndStc32, &rectStc32);
        MapWindowPoints(0, hwndChildDlg, (LPPOINT)&rectStc32, 2);




        SetWindowPos(hwndStc32, 0,
                     0, 0,
                     rectParent.right, rectParent.bottom,
                     SWP_NOMOVE | SWP_NOZORDER);
    }
    else
        SetRectEmpty(&rectStc32);


    hwndChild = GetWindow(hwndChildDlg, GW_CHILD);
    while (hwndChild)
    {
        if (hwndChild != hwndStc32)
        {
            GetWindowRect(hwndChild, &rectChild);
            MapWindowPoints(0, hwndChildDlg, (LPPOINT)&rectChild, 2);


            if (hwndStc32 && rectChild.left > rectStc32.right)
            {

                rectChild.left += rectParent.right;
                rectChild.left -= rectStc32.right;
            }

            if (rectChild.top >= rectStc32.bottom)
            {

                rectChild.top += rectParent.bottom;
                rectChild.top -= rectStc32.bottom - rectStc32.top;
            }

            SetWindowPos(hwndChild, 0, rectChild.left, rectChild.top,
                         0, 0, SWP_NOSIZE | SWP_NOZORDER);
        }
        hwndChild = GetWindow(hwndChild, GW_HWNDNEXT);
    }


    hwndChild = GetWindow(hwndParentDlg, GW_CHILD);
    while (hwndChild)
    {
        if (hwndChild != hwndChildDlg)
        {
            GetWindowRect(hwndChild, &rectChild);
            MapWindowPoints(0, hwndParentDlg, (LPPOINT)&rectChild, 2);




            rectChild.left += rectStc32.left;
            rectChild.top += rectStc32.top;

            SetWindowPos(hwndChild, 0, rectChild.left, rectChild.top,
                         0, 0, SWP_NOSIZE | SWP_NOZORDER);
        }
        hwndChild = GetWindow(hwndChild, GW_HWNDNEXT);
    }




    GetClientRect(hwndParentDlg, &rectParent);
    GetClientRect(hwndChildDlg, &rectChild);
    TRACE( "parent %s child %s stc32 %s\n", wine_dbgstr_rect( &rectParent),
            wine_dbgstr_rect( &rectChild), wine_dbgstr_rect( &rectStc32));

    if (hwndStc32)
    {

        if (rectParent.right > rectStc32.right - rectStc32.left)
            chgx = rectChild.right - ( rectStc32.right - rectStc32.left);
        else
            chgx = rectChild.right - rectParent.right;

        if (rectParent.bottom > rectStc32.bottom - rectStc32.top)
            chgy = rectChild.bottom - ( rectStc32.bottom - rectStc32.top) - help_fixup;
        else



            chgy = rectChild.bottom - rectParent.bottom;
    }
    else
    {
        chgx = 0;
        chgy = rectChild.bottom - help_fixup;
    }

    GetWindowRect(hwndParentDlg, &rectParent);
    SetWindowPos(hwndParentDlg, 0,
                 0, 0,
                 rectParent.right - rectParent.left + chgx,
                 rectParent.bottom - rectParent.top + chgy,
                 SWP_NOMOVE | SWP_NOZORDER);
}

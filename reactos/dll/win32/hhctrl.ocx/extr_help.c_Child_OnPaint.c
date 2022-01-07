
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int right; } ;
typedef TYPE_1__ RECT ;
typedef int PAINTSTRUCT ;
typedef int LRESULT ;
typedef int HWND ;
typedef int HDC ;


 int BeginPaint (int ,int *) ;
 int COLOR_BTNSHADOW ;
 int DC_PEN ;
 int EndPaint (int ,int *) ;
 int GW_CHILD ;
 int GetClientRect (int ,TYPE_1__*) ;
 int GetStockObject (int ) ;
 int GetSysColor (int ) ;
 scalar_t__ GetWindow (int ,int ) ;
 int LineTo (int ,int ,int) ;
 int MoveToEx (int ,int ,int,int *) ;
 int SelectObject (int ,int ) ;
 int SetDCPenColor (int ,int ) ;
 int WHITE_PEN ;

__attribute__((used)) static LRESULT Child_OnPaint(HWND hWnd)
{
    PAINTSTRUCT ps;
    HDC hdc;
    RECT rc;

    hdc = BeginPaint(hWnd, &ps);




    if (GetWindow(hWnd, GW_CHILD))
    {
        GetClientRect(hWnd, &rc);


        SelectObject(hdc, GetStockObject(DC_PEN));
        SetDCPenColor(hdc, GetSysColor(COLOR_BTNSHADOW));


        LineTo(hdc, rc.right, 0);

        SelectObject(hdc, GetStockObject(WHITE_PEN));
        MoveToEx(hdc, 0, 1, ((void*)0));
        LineTo(hdc, rc.right, 1);
    }

    EndPaint(hWnd, &ps);

    return 0;
}

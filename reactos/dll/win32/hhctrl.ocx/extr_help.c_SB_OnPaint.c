
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int right; int bottom; } ;
typedef TYPE_1__ RECT ;
typedef int PAINTSTRUCT ;
typedef int HWND ;
typedef int HDC ;


 int BeginPaint (int ,int *) ;
 int EndPaint (int ,int *) ;
 int FrameRect (int ,TYPE_1__*,int ) ;
 int GRAY_BRUSH ;
 int GetClientRect (int ,TYPE_1__*) ;
 int GetStockObject (int ) ;
 int LineTo (int ,int,int) ;
 int MoveToEx (int ,int,int,int *) ;
 int SelectObject (int ,int ) ;
 int WHITE_PEN ;

__attribute__((used)) static void SB_OnPaint(HWND hWnd)
{
    PAINTSTRUCT ps;
    HDC hdc;
    RECT rc;

    hdc = BeginPaint(hWnd, &ps);

    GetClientRect(hWnd, &rc);


    rc.right += 1;
    rc.bottom -= 1;
    FrameRect(hdc, &rc, GetStockObject(GRAY_BRUSH));


    SelectObject(hdc, GetStockObject(WHITE_PEN));
    MoveToEx(hdc, rc.right, 1, ((void*)0));
    LineTo(hdc, 1, 1);
    LineTo(hdc, 1, rc.bottom - 1);


    MoveToEx(hdc, 0, rc.bottom, ((void*)0));
    LineTo(hdc, rc.right, rc.bottom);

    EndPaint(hWnd, &ps);
}

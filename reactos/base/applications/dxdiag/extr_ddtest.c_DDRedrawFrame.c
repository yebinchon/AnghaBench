
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_10__ {TYPE_1__* lpVtbl; } ;
struct TYPE_9__ {int left; int right; int top; int bottom; } ;
struct TYPE_8__ {scalar_t__ (* GetDC ) (TYPE_3__*,int *) ;int (* ReleaseDC ) (TYPE_3__*,int ) ;} ;
typedef TYPE_2__ RECT ;
typedef TYPE_3__* LPDIRECTDRAWSURFACE ;
typedef int HGDIOBJ ;
typedef int HDC ;
typedef scalar_t__ HBRUSH ;
typedef int BOOL ;


 scalar_t__ CreateSolidBrush (int ) ;
 scalar_t__ DD_OK ;
 int DD_TEST_HEIGHT ;
 scalar_t__ DD_TEST_STEP ;
 int DD_TEST_WIDTH ;
 int DeleteObject (int ) ;
 int FALSE ;
 int FillRect (int ,TYPE_2__*,scalar_t__) ;
 int GetSystemMetrics (int ) ;
 int RGB (int,int,int) ;
 int SM_CXSCREEN ;
 int SM_CYSCREEN ;
 scalar_t__ stub1 (TYPE_3__*,int *) ;
 int stub2 (TYPE_3__*,int ) ;

VOID DDRedrawFrame(LPDIRECTDRAWSURFACE lpDDSurface)
{
    HDC hdc;

    if (lpDDSurface->lpVtbl->GetDC(lpDDSurface, &hdc) == DD_OK)
    {
        RECT rct;
        HBRUSH BlackBrush, WhiteBrush;
        BOOL Colour = FALSE;

        rct.left = (GetSystemMetrics(SM_CXSCREEN) - DD_TEST_WIDTH)/2;
        rct.right = (GetSystemMetrics(SM_CXSCREEN) - DD_TEST_WIDTH)/2 + DD_TEST_WIDTH;
        rct.top = (GetSystemMetrics(SM_CYSCREEN) - DD_TEST_HEIGHT)/2;
        rct.bottom = (GetSystemMetrics(SM_CYSCREEN) - DD_TEST_HEIGHT)/2 + DD_TEST_HEIGHT;

        BlackBrush = CreateSolidBrush(RGB(0,0,0));
        WhiteBrush = CreateSolidBrush(RGB(255,255,255));

        while((rct.bottom - rct.top) > DD_TEST_STEP){
            (Colour)? FillRect(hdc, &rct, WhiteBrush) : FillRect(hdc, &rct, BlackBrush);
            rct.top += DD_TEST_STEP;
            rct.bottom -= DD_TEST_STEP;
            rct.left += DD_TEST_STEP;
            rct.right -= DD_TEST_STEP;
            Colour = !Colour;
        }
        DeleteObject((HGDIOBJ)BlackBrush);
        DeleteObject((HGDIOBJ)WhiteBrush);
        lpDDSurface->lpVtbl->ReleaseDC(lpDDSurface, hdc);
    }
}

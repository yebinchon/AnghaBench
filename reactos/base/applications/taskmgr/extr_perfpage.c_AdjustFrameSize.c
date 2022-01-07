
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int left; int top; int right; int bottom; } ;
typedef TYPE_1__ RECT ;
typedef scalar_t__ PRECT ;
typedef int POINT ;
typedef int LPPOINT ;
typedef int HWND ;


 int GetClientRect (int ,TYPE_1__*) ;
 int InvalidateRect (int ,int *,int ) ;
 int MapWindowPoints (int ,int ,int ,int) ;
 int SWP_NOACTIVATE ;
 int SWP_NOOWNERZORDER ;
 int SWP_NOSIZE ;
 int SWP_NOZORDER ;
 int SetWindowPos (int ,int *,int,int,int,int,int) ;
 int TRUE ;

void AdjustFrameSize(HWND hCntrl, HWND hDlg, int nXDifference, int nYDifference, int pos)
{
    RECT rc;
    int cx, cy, sx, sy;

    GetClientRect(hCntrl, &rc);
    MapWindowPoints(hCntrl, hDlg, (LPPOINT)(PRECT)(&rc), sizeof(RECT)/sizeof(POINT));
    if (pos) {
        cx = rc.left;
        cy = rc.top;
        sx = rc.right - rc.left;
        switch (pos) {
        case 1:
            break;
        case 2:
            cy += nYDifference / 2;
            break;
        case 3:
            sx += nXDifference;
            break;
        case 4:
            cy += nYDifference / 2;
            sx += nXDifference;
            break;
        }
        sy = rc.bottom - rc.top + nYDifference / 2;
        SetWindowPos(hCntrl, ((void*)0), cx, cy, sx, sy, SWP_NOACTIVATE|SWP_NOOWNERZORDER|SWP_NOZORDER);
    } else {
        cx = rc.left + nXDifference;
        cy = rc.top + nYDifference;
        SetWindowPos(hCntrl, ((void*)0), cx, cy, 0, 0, SWP_NOACTIVATE|SWP_NOOWNERZORDER|SWP_NOSIZE|SWP_NOZORDER);
    }
    InvalidateRect(hCntrl, ((void*)0), TRUE);
}

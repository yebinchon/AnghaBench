
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_8__ {int cy; } ;
struct TYPE_10__ {int iYStart; int * hLrgWnd; int hMapWnd; TYPE_1__ CellSize; int NumRows; } ;
struct TYPE_9__ {int top; int bottom; } ;
typedef TYPE_2__ RECT ;
typedef TYPE_3__* PMAP ;
typedef int INT ;


 int GetClientRect (int ,TYPE_2__*) ;
 int InvalidateRect (int ,int *,int ) ;





 int SB_VERT ;
 int SW_HIDE ;
 int SW_INVALIDATE ;
 int SW_SHOW ;
 int ScrollWindowEx (int ,int ,int,TYPE_2__*,TYPE_2__*,int *,int *,int ) ;
 int SetScrollPos (int ,int ,int,int ) ;
 int ShowWindow (int *,int ) ;
 int TRUE ;
 scalar_t__ YCELLS ;
 scalar_t__ abs (int) ;
 int max (int ,int) ;
 int min (int,int ) ;

__attribute__((used)) static
VOID
OnVScroll(PMAP infoPtr,
          INT Value,
          INT Pos)
{
    INT iYDiff, iOldYStart = infoPtr->iYStart;

    switch (Value)
    {
        case 131:
            infoPtr->iYStart -= 1;
            break;

        case 132:
            infoPtr->iYStart += 1;
            break;

        case 129:
            infoPtr->iYStart -= YCELLS;
            break;

        case 130:
            infoPtr->iYStart += YCELLS;
            break;

        case 128:
            infoPtr->iYStart = Pos;
            break;

       default:
            break;
       }

    infoPtr->iYStart = max(0, infoPtr->iYStart);
    infoPtr->iYStart = min(infoPtr->iYStart, infoPtr->NumRows);

    iYDiff = iOldYStart - infoPtr->iYStart;
    if (iYDiff)
    {
        if (infoPtr->hLrgWnd != ((void*)0))
        {
            ShowWindow(infoPtr->hLrgWnd, SW_HIDE);
        }

        SetScrollPos(infoPtr->hMapWnd,
                     SB_VERT,
                     infoPtr->iYStart,
                     TRUE);

        if (abs(iYDiff) < YCELLS)
        {
            RECT rect;
            GetClientRect(infoPtr->hMapWnd, &rect);
            rect.top += 2;
            rect.bottom -= 2;
            ScrollWindowEx(infoPtr->hMapWnd,
                           0,
                           iYDiff * infoPtr->CellSize.cy,
                           &rect,
                           &rect,
                           ((void*)0),
                           ((void*)0),
                           SW_INVALIDATE);
        }
        else
        {
            InvalidateRect(infoPtr->hMapWnd,
                           ((void*)0),
                           TRUE);
        }

        if (infoPtr->hLrgWnd != ((void*)0))
        {
            ShowWindow(infoPtr->hLrgWnd, SW_SHOW);
        }
    }
}

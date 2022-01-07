
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ hwndSelf; int dwStyle; scalar_t__ nWidth; scalar_t__ nHeight; scalar_t__ nButtonSize; scalar_t__ hwndChild; } ;
struct TYPE_6__ {scalar_t__ right; scalar_t__ left; scalar_t__ bottom; scalar_t__ top; } ;
typedef TYPE_1__ RECT ;
typedef TYPE_2__ PAGER_INFO ;
typedef scalar_t__ INT ;
typedef scalar_t__ BOOL ;


 int GetWindowRect (scalar_t__,TYPE_1__*) ;
 int PAGER_CalcSize (TYPE_2__*) ;
 int PGS_HORZ ;
 int TRACE (char*,scalar_t__,scalar_t__) ;

__attribute__((used)) static INT
PAGER_GetScrollRange(PAGER_INFO* infoPtr, BOOL calc_size)
{
    INT scrollRange = 0;

    if (infoPtr->hwndChild)
    {
        INT wndSize, childSize;
        RECT wndRect;
        GetWindowRect(infoPtr->hwndSelf, &wndRect);

        if (calc_size)
            PAGER_CalcSize(infoPtr);
        if (infoPtr->dwStyle & PGS_HORZ)
        {
            wndSize = wndRect.right - wndRect.left;
            childSize = infoPtr->nWidth;
        }
        else
        {
            wndSize = wndRect.bottom - wndRect.top;
            childSize = infoPtr->nHeight;
        }

        TRACE("childSize = %d,  wndSize = %d\n", childSize, wndSize);
        if (childSize > wndSize)
            scrollRange = childSize - wndSize + infoPtr->nButtonSize;
    }

    TRACE("[%p] returns %d\n", infoPtr->hwndSelf, scrollRange);
    return scrollRange;
}

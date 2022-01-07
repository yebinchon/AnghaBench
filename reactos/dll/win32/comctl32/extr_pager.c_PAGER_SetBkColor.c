
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int hwndSelf; int clrBk; } ;
typedef TYPE_1__ PAGER_INFO ;
typedef int COLORREF ;


 int RDW_ERASE ;
 int RDW_INVALIDATE ;
 int RedrawWindow (int ,int ,int ,int) ;
 int SWP_FRAMECHANGED ;
 int SWP_NOACTIVATE ;
 int SWP_NOMOVE ;
 int SWP_NOSIZE ;
 int SWP_NOZORDER ;
 int SetWindowPos (int ,int ,int ,int ,int ,int ,int) ;
 int TRACE (char*,int ,int ) ;

__attribute__((used)) static COLORREF
PAGER_SetBkColor (PAGER_INFO* infoPtr, COLORREF clrBk)
{
    COLORREF clrTemp = infoPtr->clrBk;

    infoPtr->clrBk = clrBk;
    TRACE("[%p] %06x\n", infoPtr->hwndSelf, infoPtr->clrBk);


    SetWindowPos(infoPtr->hwndSelf, 0, 0, 0, 0, 0,
   SWP_FRAMECHANGED | SWP_NOSIZE | SWP_NOMOVE |
   SWP_NOZORDER | SWP_NOACTIVATE);

    RedrawWindow(infoPtr->hwndSelf, 0, 0, RDW_ERASE | RDW_INVALIDATE);

    return clrTemp;
}

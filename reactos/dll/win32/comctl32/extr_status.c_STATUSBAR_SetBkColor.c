
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int clrBk; int Self; } ;
typedef TYPE_1__ STATUS_INFO ;
typedef int COLORREF ;


 int FALSE ;
 int InvalidateRect (int ,int *,int ) ;
 int TRACE (char*,int ,int ) ;

__attribute__((used)) static COLORREF
STATUSBAR_SetBkColor (STATUS_INFO *infoPtr, COLORREF color)
{
    COLORREF oldBkColor;

    oldBkColor = infoPtr->clrBk;
    infoPtr->clrBk = color;
    InvalidateRect(infoPtr->Self, ((void*)0), FALSE);

    TRACE("CREF: %08x -> %08x\n", oldBkColor, infoPtr->clrBk);
    return oldBkColor;
}

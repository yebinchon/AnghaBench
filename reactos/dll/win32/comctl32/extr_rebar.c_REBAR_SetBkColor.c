
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int clrBk; } ;
typedef TYPE_1__ REBAR_INFO ;
typedef int LRESULT ;
typedef int COLORREF ;


 int TRACE (char*,int ) ;

__attribute__((used)) static LRESULT
REBAR_SetBkColor (REBAR_INFO *infoPtr, COLORREF clr)
{
    COLORREF clrTemp;

    clrTemp = infoPtr->clrBk;
    infoPtr->clrBk = clr;

    TRACE("background color 0x%06x!\n", infoPtr->clrBk);

    return clrTemp;
}

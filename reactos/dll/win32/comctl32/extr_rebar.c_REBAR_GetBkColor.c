
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ clrBk; scalar_t__ clrBtnFace; } ;
typedef TYPE_1__ REBAR_INFO ;
typedef scalar_t__ LRESULT ;
typedef scalar_t__ COLORREF ;


 scalar_t__ CLR_DEFAULT ;
 int TRACE (char*,scalar_t__) ;

__attribute__((used)) static inline LRESULT
REBAR_GetBkColor (const REBAR_INFO *infoPtr)
{
    COLORREF clr = infoPtr->clrBk;

    if (clr == CLR_DEFAULT)
      clr = infoPtr->clrBtnFace;

    TRACE("background color 0x%06x!\n", clr);

    return clr;
}

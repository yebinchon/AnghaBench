
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int clrBk; } ;
typedef TYPE_1__ TOOLTIPS_INFO ;
typedef int LRESULT ;
typedef int COLORREF ;



__attribute__((used)) static inline LRESULT
TOOLTIPS_SetTipBkColor (TOOLTIPS_INFO *infoPtr, COLORREF clrBk)
{
    infoPtr->clrBk = clrBk;

    return 0;
}

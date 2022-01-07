
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int hwndSelf; } ;
typedef TYPE_1__ TOOLTIPS_INFO ;
typedef int PAINTSTRUCT ;
typedef int LRESULT ;
typedef int * HDC ;


 int * BeginPaint (int ,int *) ;
 int EndPaint (int ,int *) ;
 int TOOLTIPS_Refresh (TYPE_1__ const*,int *) ;

__attribute__((used)) static LRESULT
TOOLTIPS_Paint (const TOOLTIPS_INFO *infoPtr, HDC hDC)
{
    HDC hdc;
    PAINTSTRUCT ps;

    hdc = (hDC == ((void*)0)) ? BeginPaint (infoPtr->hwndSelf, &ps) : hDC;
    TOOLTIPS_Refresh (infoPtr, hdc);
    if (!hDC)
 EndPaint (infoPtr->hwndSelf, &ps);
    return 0;
}

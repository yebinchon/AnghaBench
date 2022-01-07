
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rcMargin; } ;
typedef TYPE_1__ TOOLTIPS_INFO ;
typedef int RECT ;
typedef int LRESULT ;



__attribute__((used)) static LRESULT
TOOLTIPS_SetMargin (TOOLTIPS_INFO *infoPtr, const RECT *rect)
{
    if (rect)
        infoPtr->rcMargin = *rect;

    return 0;
}

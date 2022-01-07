
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int clrText; } ;
typedef TYPE_1__ TOOLTIPS_INFO ;
typedef int LRESULT ;
typedef int COLORREF ;



__attribute__((used)) static inline LRESULT
TOOLTIPS_SetTipTextColor (TOOLTIPS_INFO *infoPtr, COLORREF clrText)
{
    infoPtr->clrText = clrText;

    return 0;
}

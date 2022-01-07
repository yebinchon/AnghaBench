
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nMaxTipWidth; } ;
typedef TYPE_1__ TOOLTIPS_INFO ;
typedef int LRESULT ;



__attribute__((used)) static inline LRESULT
TOOLTIPS_GetMaxTipWidth (const TOOLTIPS_INFO *infoPtr)
{
    return infoPtr->nMaxTipWidth;
}

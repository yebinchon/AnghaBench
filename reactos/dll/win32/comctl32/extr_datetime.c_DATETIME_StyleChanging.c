
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WPARAM ;
struct TYPE_3__ {int styleOld; int styleNew; } ;
typedef TYPE_1__ STYLESTRUCT ;
typedef int LRESULT ;
typedef int DATETIME_INFO ;


 int DTS_SHOWNONE ;
 int TRACE (char*,int ,int,int) ;

__attribute__((used)) static LRESULT
DATETIME_StyleChanging(DATETIME_INFO *infoPtr, WPARAM wStyleType, STYLESTRUCT *lpss)
{
    TRACE("(styletype=%lx, styleOld=0x%08x, styleNew=0x%08x)\n",
          wStyleType, lpss->styleOld, lpss->styleNew);


    if ((lpss->styleNew ^ lpss->styleOld) & DTS_SHOWNONE)
    {
        if (lpss->styleOld & DTS_SHOWNONE)
            lpss->styleNew |= DTS_SHOWNONE;
        else
            lpss->styleNew &= ~DTS_SHOWNONE;
    }

    return 0;
}

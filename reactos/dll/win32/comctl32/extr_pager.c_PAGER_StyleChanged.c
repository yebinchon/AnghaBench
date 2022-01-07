
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ WPARAM ;
struct TYPE_7__ {int dwStyle; } ;
struct TYPE_6__ {int styleNew; int styleOld; } ;
typedef TYPE_1__ STYLESTRUCT ;
typedef TYPE_2__ PAGER_INFO ;
typedef int LRESULT ;
typedef int DWORD ;


 scalar_t__ GWL_STYLE ;
 int PAGER_RecalcSize (TYPE_2__*) ;
 int PGS_HORZ ;
 int PGS_VERT ;
 int TRACE (char*,scalar_t__,int ,int) ;

__attribute__((used)) static LRESULT
PAGER_StyleChanged(PAGER_INFO *infoPtr, WPARAM wStyleType, const STYLESTRUCT *lpss)
{
    DWORD oldStyle = infoPtr->dwStyle;

    TRACE("(styletype=%lx, styleOld=0x%08x, styleNew=0x%08x)\n",
          wStyleType, lpss->styleOld, lpss->styleNew);

    if (wStyleType != GWL_STYLE) return 0;

    infoPtr->dwStyle = lpss->styleNew;

    if ((oldStyle ^ lpss->styleNew) & (PGS_HORZ | PGS_VERT))
    {
        PAGER_RecalcSize(infoPtr);
    }

    return 0;
}

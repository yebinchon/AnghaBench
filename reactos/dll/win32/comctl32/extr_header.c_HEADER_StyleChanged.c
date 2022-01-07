
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ WPARAM ;
struct TYPE_6__ {int dwStyle; } ;
struct TYPE_5__ {int styleNew; int styleOld; } ;
typedef TYPE_1__ STYLESTRUCT ;
typedef int INT ;
typedef TYPE_2__ HEADER_INFO ;


 scalar_t__ GWL_STYLE ;
 int TRACE (char*,scalar_t__,int ,int ) ;

__attribute__((used)) static INT HEADER_StyleChanged(HEADER_INFO *infoPtr, WPARAM wStyleType,
                               const STYLESTRUCT *lpss)
{
    TRACE("(styletype=%lx, styleOld=0x%08x, styleNew=0x%08x)\n",
          wStyleType, lpss->styleOld, lpss->styleNew);

    if (wStyleType != GWL_STYLE) return 0;

    infoPtr->dwStyle = lpss->styleNew;

    return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ WPARAM ;
struct TYPE_6__ {int styleNew; } ;
struct TYPE_5__ {int dwStyle; } ;
typedef TYPE_1__ TRACKBAR_INFO ;
typedef TYPE_2__ STYLESTRUCT ;
typedef int LRESULT ;


 scalar_t__ GWL_STYLE ;

__attribute__((used)) static LRESULT
TRACKBAR_StyleChanged (TRACKBAR_INFO *infoPtr, WPARAM wStyleType,
                       const STYLESTRUCT *lpss)
{
    if (wStyleType != GWL_STYLE) return 0;

    infoPtr->dwStyle = lpss->styleNew;

    return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ lRangeMax; int lRangeMin; scalar_t__ lPos; int lPageSize; int dwStyle; int flags; } ;
typedef TYPE_1__ TRACKBAR_INFO ;
typedef int LRESULT ;
typedef scalar_t__ LONG ;
typedef int BOOL ;


 int TBS_AUTOTICKS ;
 int TB_THUMBPOSCHANGED ;
 int TRACKBAR_InvalidateAll (TYPE_1__*) ;
 int TRACKBAR_RecalculateTics (TYPE_1__*) ;
 scalar_t__ max (scalar_t__,int) ;

__attribute__((used)) static inline LRESULT
TRACKBAR_SetRangeMax (TRACKBAR_INFO *infoPtr, BOOL redraw, LONG lMax)
{
    BOOL changed = infoPtr->lRangeMax != lMax;
    LONG rightmost = max(lMax, infoPtr->lRangeMin);

    infoPtr->lRangeMax = lMax;
    if (infoPtr->lPos > rightmost) {
        infoPtr->lPos = rightmost;
        infoPtr->flags |= TB_THUMBPOSCHANGED;
    }

    infoPtr->lPageSize = (infoPtr->lRangeMax - infoPtr->lRangeMin) / 5;
    if (infoPtr->lPageSize == 0) infoPtr->lPageSize = 1;

    if (changed && (infoPtr->dwStyle & TBS_AUTOTICKS))
        TRACKBAR_RecalculateTics (infoPtr);

    if (redraw) TRACKBAR_InvalidateAll(infoPtr);

    return 0;
}

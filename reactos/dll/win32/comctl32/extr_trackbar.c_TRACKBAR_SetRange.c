
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ lRangeMin; scalar_t__ lRangeMax; scalar_t__ lPos; int lPageSize; int dwStyle; int flags; } ;
typedef TYPE_1__ TRACKBAR_INFO ;
typedef scalar_t__ SHORT ;
typedef int LRESULT ;
typedef int LONG ;
typedef int BOOL ;


 scalar_t__ HIWORD (int ) ;
 scalar_t__ LOWORD (int ) ;
 int TBS_AUTOTICKS ;
 int TB_THUMBPOSCHANGED ;
 int TRACKBAR_InvalidateAll (TYPE_1__*) ;
 int TRACKBAR_RecalculateTics (TYPE_1__*) ;

__attribute__((used)) static inline LRESULT
TRACKBAR_SetRange (TRACKBAR_INFO *infoPtr, BOOL redraw, LONG range)
{
    BOOL changed = infoPtr->lRangeMin != (SHORT)LOWORD(range) ||
                   infoPtr->lRangeMax != (SHORT)HIWORD(range);

    infoPtr->lRangeMin = (SHORT)LOWORD(range);
    infoPtr->lRangeMax = (SHORT)HIWORD(range);


    if (infoPtr->lPos < infoPtr->lRangeMin)
        infoPtr->lPos = infoPtr->lRangeMin;

    if (infoPtr->lPos > infoPtr->lRangeMax)
        infoPtr->lPos = infoPtr->lRangeMax;

    infoPtr->lPageSize = (infoPtr->lRangeMax - infoPtr->lRangeMin) / 5;
    if (infoPtr->lPageSize == 0) infoPtr->lPageSize = 1;

    if (changed) {
        if (infoPtr->dwStyle & TBS_AUTOTICKS)
            TRACKBAR_RecalculateTics (infoPtr);
        infoPtr->flags |= TB_THUMBPOSCHANGED;
    }

    if (redraw) TRACKBAR_InvalidateAll(infoPtr);

    return 0;
}

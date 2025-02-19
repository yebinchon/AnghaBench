
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dwStyle; scalar_t__ lSelMin; scalar_t__ lSelMax; scalar_t__ lRangeMin; scalar_t__ lRangeMax; int flags; } ;
typedef TYPE_1__ TRACKBAR_INFO ;
typedef void* SHORT ;
typedef int LRESULT ;
typedef int LONG ;
typedef scalar_t__ BOOL ;


 scalar_t__ HIWORD (int ) ;
 scalar_t__ LOWORD (int ) ;
 int TBS_ENABLESELRANGE ;
 int TB_SELECTIONCHANGED ;
 int TRACKBAR_InvalidateAll (TYPE_1__*) ;

__attribute__((used)) static inline LRESULT
TRACKBAR_SetSel (TRACKBAR_INFO *infoPtr, BOOL fRedraw, LONG lSel)
{
    if (!(infoPtr->dwStyle & TBS_ENABLESELRANGE)){
        infoPtr->lSelMin = 0;
        infoPtr->lSelMax = 0;
        return 0;
    }

    infoPtr->lSelMin = (SHORT)LOWORD(lSel);
    infoPtr->lSelMax = (SHORT)HIWORD(lSel);
    infoPtr->flags |= TB_SELECTIONCHANGED;

    if (infoPtr->lSelMin < infoPtr->lRangeMin)
        infoPtr->lSelMin = infoPtr->lRangeMin;
    if (infoPtr->lSelMax > infoPtr->lRangeMax)
        infoPtr->lSelMax = infoPtr->lRangeMax;

    if (fRedraw) TRACKBAR_InvalidateAll(infoPtr);

    return 0;
}

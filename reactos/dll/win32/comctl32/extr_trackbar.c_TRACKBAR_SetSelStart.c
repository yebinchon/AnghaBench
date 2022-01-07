
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dwStyle; scalar_t__ lSelMin; scalar_t__ lRangeMin; int flags; } ;
typedef TYPE_1__ TRACKBAR_INFO ;
typedef int LRESULT ;
typedef scalar_t__ LONG ;
typedef scalar_t__ BOOL ;


 int TBS_ENABLESELRANGE ;
 int TB_SELECTIONCHANGED ;
 int TRACKBAR_InvalidateAll (TYPE_1__*) ;

__attribute__((used)) static inline LRESULT
TRACKBAR_SetSelStart (TRACKBAR_INFO *infoPtr, BOOL fRedraw, LONG lStart)
{
    if (!(infoPtr->dwStyle & TBS_ENABLESELRANGE)){
        infoPtr->lSelMin = 0;
 return 0;
    }

    infoPtr->lSelMin = lStart;
    infoPtr->flags |=TB_SELECTIONCHANGED;

    if (infoPtr->lSelMin < infoPtr->lRangeMin)
        infoPtr->lSelMin = infoPtr->lRangeMin;

    if (fRedraw) TRACKBAR_InvalidateAll(infoPtr);

    return 0;
}

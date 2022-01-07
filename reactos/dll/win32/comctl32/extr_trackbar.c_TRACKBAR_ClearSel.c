
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; scalar_t__ lSelMax; scalar_t__ lSelMin; } ;
typedef TYPE_1__ TRACKBAR_INFO ;
typedef int LRESULT ;
typedef scalar_t__ BOOL ;


 int TB_SELECTIONCHANGED ;
 int TRACKBAR_InvalidateAll (TYPE_1__*) ;

__attribute__((used)) static LRESULT
TRACKBAR_ClearSel (TRACKBAR_INFO *infoPtr, BOOL fRedraw)
{
    infoPtr->lSelMin = 0;
    infoPtr->lSelMax = 0;
    infoPtr->flags |= TB_SELECTIONCHANGED;

    if (fRedraw) TRACKBAR_InvalidateAll(infoPtr);

    return 0;
}

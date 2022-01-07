
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int WORD ;
struct TYPE_6__ {int dwStyle; int uTicFreq; } ;
typedef TYPE_1__ TRACKBAR_INFO ;
typedef int LRESULT ;


 int TBS_AUTOTICKS ;
 int TRACKBAR_InvalidateAll (TYPE_1__*) ;
 int TRACKBAR_RecalculateTics (TYPE_1__*) ;
 int TRACKBAR_UpdateThumb (TYPE_1__*) ;

__attribute__((used)) static inline LRESULT
TRACKBAR_SetTicFreq (TRACKBAR_INFO *infoPtr, WORD wFreq)
{
    if (infoPtr->dwStyle & TBS_AUTOTICKS) {
        infoPtr->uTicFreq = wFreq;
 TRACKBAR_RecalculateTics (infoPtr);
 TRACKBAR_InvalidateAll(infoPtr);
    }

    TRACKBAR_UpdateThumb (infoPtr);
    return 0;
}

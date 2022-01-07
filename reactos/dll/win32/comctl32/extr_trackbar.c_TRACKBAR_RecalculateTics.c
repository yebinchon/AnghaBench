
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned int uTicFreq; unsigned int lRangeMax; unsigned int lRangeMin; int* tics; unsigned int uNumTics; } ;
typedef TYPE_1__ TRACKBAR_INFO ;
typedef int DWORD ;


 int Free (int*) ;
 int NM_OUTOFMEMORY ;
 int* ReAlloc (int*,unsigned int) ;
 int notify (TYPE_1__*,int ) ;

__attribute__((used)) static void TRACKBAR_RecalculateTics (TRACKBAR_INFO *infoPtr)
{
    int tic;
    unsigned nrTics, i;

    if (infoPtr->uTicFreq && infoPtr->lRangeMax >= infoPtr->lRangeMin) {
        nrTics=(infoPtr->lRangeMax - infoPtr->lRangeMin)/infoPtr->uTicFreq;

        if (nrTics && ((infoPtr->lRangeMax - infoPtr->lRangeMin) % infoPtr->uTicFreq == 0))
          nrTics--;
    }
    else {
        Free (infoPtr->tics);
        infoPtr->tics = ((void*)0);
        infoPtr->uNumTics = 0;
        return;
    }

    if (nrTics != infoPtr->uNumTics) {
     infoPtr->tics=ReAlloc (infoPtr->tics,
                                        (nrTics+1)*sizeof (DWORD));
 if (!infoPtr->tics) {
     infoPtr->uNumTics = 0;
     notify(infoPtr, NM_OUTOFMEMORY);
     return;
 }
     infoPtr->uNumTics = nrTics;
    }

    tic = infoPtr->lRangeMin + infoPtr->uTicFreq;
    for (i = 0; i < nrTics; i++, tic += infoPtr->uTicFreq)
        infoPtr->tics[i] = tic;
}

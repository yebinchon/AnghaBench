#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {unsigned int uTicFreq; unsigned int lRangeMax; unsigned int lRangeMin; int* tics; unsigned int uNumTics; } ;
typedef  TYPE_1__ TRACKBAR_INFO ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int /*<<< orphan*/  NM_OUTOFMEMORY ; 
 int* FUNC1 (int*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3 (TRACKBAR_INFO *infoPtr)
{
    int tic;
    unsigned nrTics, i;

    if (infoPtr->uTicFreq && infoPtr->lRangeMax >= infoPtr->lRangeMin) {
        nrTics=(infoPtr->lRangeMax - infoPtr->lRangeMin)/infoPtr->uTicFreq;
        /* don't add extra tic if there's no remainder */
        if (nrTics && ((infoPtr->lRangeMax - infoPtr->lRangeMin) % infoPtr->uTicFreq == 0))
          nrTics--;
    }
    else {
        FUNC0 (infoPtr->tics);
        infoPtr->tics = NULL;
        infoPtr->uNumTics = 0;
        return;
    }

    if (nrTics != infoPtr->uNumTics) {
    	infoPtr->tics=FUNC1 (infoPtr->tics,
                                        (nrTics+1)*sizeof (DWORD));
	if (!infoPtr->tics) {
	    infoPtr->uNumTics = 0;
	    FUNC2(infoPtr, NM_OUTOFMEMORY);
	    return;
	}
    	infoPtr->uNumTics = nrTics;
    }

    tic = infoPtr->lRangeMin + infoPtr->uTicFreq;
    for (i = 0; i < nrTics; i++, tic += infoPtr->uTicFreq)
        infoPtr->tics[i] = tic;
}
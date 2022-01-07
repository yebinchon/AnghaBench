
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ lRangeMin; scalar_t__ lRangeMax; int uNumTics; scalar_t__* tics; } ;
typedef TYPE_1__ TRACKBAR_INFO ;
typedef int LRESULT ;
typedef scalar_t__ LONG ;
typedef int DWORD ;


 int FALSE ;
 int NM_OUTOFMEMORY ;
 scalar_t__* ReAlloc (scalar_t__*,int) ;
 int TRACE (char*,scalar_t__) ;
 int TRACKBAR_InvalidateAll (TYPE_1__*) ;
 int TRUE ;
 int notify (TYPE_1__*,int ) ;

__attribute__((used)) static inline LRESULT
TRACKBAR_SetTic (TRACKBAR_INFO *infoPtr, LONG lPos)
{
    if ((lPos < infoPtr->lRangeMin) || (lPos> infoPtr->lRangeMax))
        return FALSE;

    TRACE("lPos=%d\n", lPos);

    infoPtr->uNumTics++;
    infoPtr->tics=ReAlloc( infoPtr->tics,
                                    (infoPtr->uNumTics)*sizeof (DWORD));
    if (!infoPtr->tics) {
 infoPtr->uNumTics = 0;
 notify(infoPtr, NM_OUTOFMEMORY);
 return FALSE;
    }
    infoPtr->tics[infoPtr->uNumTics-1] = lPos;

    TRACKBAR_InvalidateAll(infoPtr);

    return TRUE;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ uNumTics; int * tics; } ;
typedef TYPE_1__ TRACKBAR_INFO ;
typedef int LRESULT ;
typedef scalar_t__ BOOL ;


 int Free (int *) ;
 int TRACKBAR_InvalidateAll (TYPE_1__*) ;

__attribute__((used)) static LRESULT
TRACKBAR_ClearTics (TRACKBAR_INFO *infoPtr, BOOL fRedraw)
{
    if (infoPtr->tics) {
        Free (infoPtr->tics);
        infoPtr->tics = ((void*)0);
        infoPtr->uNumTics = 0;
    }

    if (fRedraw) TRACKBAR_InvalidateAll(infoPtr);

    return 0;
}

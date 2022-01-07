
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t uNumTics; int* tics; } ;
typedef TYPE_1__ TRACKBAR_INFO ;
typedef int LONG ;
typedef size_t INT ;
typedef int DWORD ;


 int comp_tics ;
 int qsort (int*,size_t,int,int ) ;

__attribute__((used)) static inline LONG
TRACKBAR_GetTic (const TRACKBAR_INFO *infoPtr, INT iTic)
{
    if ((iTic < 0) || (iTic >= infoPtr->uNumTics) || !infoPtr->tics)
 return -1;

    qsort(infoPtr->tics, infoPtr->uNumTics, sizeof(DWORD), comp_tics);
    return infoPtr->tics[iTic];
}

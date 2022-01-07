
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dwStyle; scalar_t__ uNumTics; } ;
typedef TYPE_1__ TRACKBAR_INFO ;
typedef scalar_t__ LONG ;


 int TBS_NOTICKS ;

__attribute__((used)) static inline LONG
TRACKBAR_GetNumTics (const TRACKBAR_INFO *infoPtr)
{
    if (infoPtr->dwStyle & TBS_NOTICKS) return 0;

    return infoPtr->uNumTics + 2;
}

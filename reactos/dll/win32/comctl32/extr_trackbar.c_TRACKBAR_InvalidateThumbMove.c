
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TRACKBAR_INFO ;
typedef scalar_t__ LONG ;


 int TRACKBAR_InvalidateThumb (int const*,scalar_t__) ;

__attribute__((used)) static inline void
TRACKBAR_InvalidateThumbMove (const TRACKBAR_INFO *infoPtr, LONG oldPos, LONG newPos)
{
    TRACKBAR_InvalidateThumb (infoPtr, oldPos);
    if (newPos != oldPos)
        TRACKBAR_InvalidateThumb (infoPtr, newPos);
}

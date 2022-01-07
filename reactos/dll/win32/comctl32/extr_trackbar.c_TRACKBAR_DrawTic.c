
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TRACKBAR_INFO ;
typedef int LONG ;
typedef int HDC ;


 int TBS_BOTH ;
 int TBS_LEFT ;
 int TBS_TOP ;
 int TRACKBAR_DrawOneTic (int const*,int ,int ,int) ;

__attribute__((used)) static inline void
TRACKBAR_DrawTic (const TRACKBAR_INFO *infoPtr, HDC hdc, LONG ticPos, int flags)
{
    if ((flags & (TBS_LEFT | TBS_TOP)) || (flags & TBS_BOTH))
        TRACKBAR_DrawOneTic (infoPtr, hdc, ticPos, flags | TBS_LEFT);

    if (!(flags & (TBS_LEFT | TBS_TOP)) || (flags & TBS_BOTH))
        TRACKBAR_DrawOneTic (infoPtr, hdc, ticPos, flags & ~TBS_LEFT);
}

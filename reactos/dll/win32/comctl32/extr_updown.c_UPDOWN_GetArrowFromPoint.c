
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UPDOWN_INFO ;
typedef int RECT ;
typedef int POINT ;
typedef int INT ;


 int FLAG_DECR ;
 int FLAG_INCR ;
 scalar_t__ PtInRect (int *,int ) ;
 int UPDOWN_GetArrowRect (int const*,int *,int ) ;

__attribute__((used)) static INT UPDOWN_GetArrowFromPoint (const UPDOWN_INFO *infoPtr, RECT *rect, POINT pt)
{
    UPDOWN_GetArrowRect (infoPtr, rect, FLAG_INCR);
    if(PtInRect(rect, pt)) return FLAG_INCR;

    UPDOWN_GetArrowRect (infoPtr, rect, FLAG_DECR);
    if(PtInRect(rect, pt)) return FLAG_DECR;

    return 0;
}

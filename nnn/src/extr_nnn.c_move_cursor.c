
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX (int,int) ;
 int MIN (int,int) ;
 int SCROLLOFF ;
 int cur ;
 int curscroll ;
 int ndents ;
 int xlines ;

__attribute__((used)) static void move_cursor(int target, int ignore_scrolloff)
{
 int delta, scrolloff, onscreen = xlines - 4;

 target = MAX(0, MIN(ndents - 1, target));
 delta = target - cur;
 cur = target;
 if (!ignore_scrolloff) {
  scrolloff = MIN(SCROLLOFF, onscreen >> 1);







  if (((cur < (curscroll + scrolloff)) && delta < 0)
      || ((cur > (curscroll + onscreen - scrolloff - 1)) && delta > 0))
   curscroll += delta;
 }
 curscroll = MIN(curscroll, MIN(cur, ndents - onscreen));
 curscroll = MAX(curscroll, MAX(cur - (onscreen - 1), 0));
}

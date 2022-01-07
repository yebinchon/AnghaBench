
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32 ;
typedef scalar_t__ MultiXactOffset ;



__attribute__((used)) static bool
MultiXactOffsetWouldWrap(MultiXactOffset boundary, MultiXactOffset start,
       uint32 distance)
{
 MultiXactOffset finish;





 finish = start + distance;
 if (finish < start)
  finish++;
 if (start < boundary)
  return finish >= boundary || finish < start;
 else
  return finish >= boundary && finish < start;
}

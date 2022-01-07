
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Assert (int) ;
 int QUEUE_MAX_PAGE ;

__attribute__((used)) static int
asyncQueuePageDiff(int p, int q)
{
 int diff;





 Assert(p >= 0 && p <= QUEUE_MAX_PAGE);
 Assert(q >= 0 && q <= QUEUE_MAX_PAGE);

 diff = p - q;
 if (diff >= ((QUEUE_MAX_PAGE + 1) / 2))
  diff -= QUEUE_MAX_PAGE + 1;
 else if (diff < -((QUEUE_MAX_PAGE + 1) / 2))
  diff += QUEUE_MAX_PAGE + 1;
 return diff;
}

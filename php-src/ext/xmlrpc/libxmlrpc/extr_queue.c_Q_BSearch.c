
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int size; } ;
typedef TYPE_1__ queue ;


 void const** queue_index ;

__attribute__((used)) static int Q_BSearch( queue *q, void *key,
                      int (*Comp)(const void *, const void*))
{
   int low, mid, hi, val;

   low = 0;
   hi = q->size - 1;

   while(low <= hi) {
      mid = (low + hi) / 2;
      val = Comp(key, queue_index[ mid ]);

      if(val < 0)
         hi = mid - 1;

      else if(val > 0)
         low = mid + 1;

      else
         return mid;
   }



   return -1;
}

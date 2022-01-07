
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int cursor; int sorted; } ;
typedef TYPE_1__ queue ;


 int Q_BSearch (TYPE_1__*,void*,int (*) (void const*,void const*)) ;
 int Q_Sort (TYPE_1__*,int (*) (void const*,void const*)) ;
 void** queue_index ;
 int * queue_posn_index ;

void *Q_Seek(queue *q, void *data, int (*Comp)(const void *, const void *))
{
   int idx;

   if (q == ((void*)0)) {
 return ((void*)0);
   }

   if(!q->sorted) {
      if(!Q_Sort(q, Comp))
         return ((void*)0);
   }

   idx = Q_BSearch(q, data, Comp);

   if(idx < 0)
      return ((void*)0);

   q->cursor = queue_posn_index[idx];

   return queue_index[idx];
}

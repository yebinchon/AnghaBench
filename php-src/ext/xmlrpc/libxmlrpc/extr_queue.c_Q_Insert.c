
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int queue ;


 int False_ ;
 int Q_PushHead (int *,void*) ;
 int Q_Sort (int *,int (*) (void const*,void const*)) ;
 int True_ ;

int Q_Insert(queue *q, void *data, int (*Comp)(const void *, const void *))
{
   if (q == ((void*)0)) {
 return False_;
   }

   Q_PushHead(q, data);

   if(!Q_Sort(q, Comp))
      return False_;

   return True_;
}

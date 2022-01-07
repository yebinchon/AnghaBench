
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int queue ;


 int False_ ;
 int Q_AtTail (int *) ;
 void* Q_Head (int *) ;
 void* Q_Next (int *) ;
 int True_ ;

int Q_Find(queue *q, void *data,
           int (*Comp)(const void *, const void *))
{
   void *d;

   if (q == ((void*)0)) {
 return False_;
   }

   d = Q_Head(q);
   do {
      if(Comp(d, data) == 0)
         return True_;
      d = Q_Next(q);
   } while(!Q_AtTail(q));

   if(Comp(d, data) == 0)
      return True_;

   return False_;
}

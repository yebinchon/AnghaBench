
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 int myfunc ;
 int once ;
 scalar_t__ pthread_once (int *,int ) ;

void *
mythread(void * arg)
{
   assert(pthread_once(&once, myfunc) == 0);

   return 0;
}

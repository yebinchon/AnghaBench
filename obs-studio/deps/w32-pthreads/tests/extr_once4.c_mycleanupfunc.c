
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int oncenum; int threadnum; int myPrio; int w32Thread; } ;
typedef TYPE_1__ bag_t ;


 int EnterCriticalSection (int *) ;
 int GetThreadPriority (int ) ;
 int LeaveCriticalSection (int *) ;
 int print_lock ;
 int printf (char*,int,int,int,int) ;

void
mycleanupfunc(void * arg)
{
  bag_t * bag = (bag_t *) arg;
  EnterCriticalSection(&print_lock);

  printf("%4d %4d %4d %4d\n",
  bag->oncenum,
  bag->threadnum,
  bag->myPrio,
  bag->myPrio - GetThreadPriority(bag->w32Thread));
  LeaveCriticalSection(&print_lock);
}

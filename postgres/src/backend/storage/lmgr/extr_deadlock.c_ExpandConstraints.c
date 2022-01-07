
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ procs; scalar_t__ nProcs; TYPE_2__* lock; } ;
struct TYPE_10__ {TYPE_2__* lock; } ;
struct TYPE_8__ {scalar_t__ size; } ;
struct TYPE_9__ {TYPE_1__ waitProcs; } ;
typedef TYPE_2__ LOCK ;
typedef TYPE_3__ EDGE ;


 int Assert (int) ;
 int MaxBackends ;
 int TopoSort (TYPE_2__*,TYPE_3__*,int,scalar_t__) ;
 size_t nWaitOrders ;
 scalar_t__ waitOrderProcs ;
 TYPE_4__* waitOrders ;

__attribute__((used)) static bool
ExpandConstraints(EDGE *constraints,
      int nConstraints)
{
 int nWaitOrderProcs = 0;
 int i,
    j;

 nWaitOrders = 0;






 for (i = nConstraints; --i >= 0;)
 {
  LOCK *lock = constraints[i].lock;


  for (j = nWaitOrders; --j >= 0;)
  {
   if (waitOrders[j].lock == lock)
    break;
  }
  if (j >= 0)
   continue;

  waitOrders[nWaitOrders].lock = lock;
  waitOrders[nWaitOrders].procs = waitOrderProcs + nWaitOrderProcs;
  waitOrders[nWaitOrders].nProcs = lock->waitProcs.size;
  nWaitOrderProcs += lock->waitProcs.size;
  Assert(nWaitOrderProcs <= MaxBackends);





  if (!TopoSort(lock, constraints, i + 1,
       waitOrders[nWaitOrders].procs))
   return 0;
  nWaitOrders++;
 }
 return 1;
}

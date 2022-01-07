
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_16__ {int pred; int link; TYPE_4__* blocker; TYPE_4__* waiter; } ;
struct TYPE_11__ {scalar_t__ next; } ;
struct TYPE_13__ {int size; TYPE_1__ links; } ;
struct TYPE_15__ {TYPE_3__ waitProcs; } ;
struct TYPE_12__ {scalar_t__ next; } ;
struct TYPE_14__ {struct TYPE_14__* lockGroupLeader; TYPE_5__* waitLock; TYPE_2__ links; } ;
typedef TYPE_3__ PROC_QUEUE ;
typedef TYPE_4__ PGPROC ;
typedef TYPE_5__ LOCK ;
typedef TYPE_6__ EDGE ;


 int Assert (int) ;
 int MemSet (int*,int ,int) ;
 int* afterConstraints ;
 int* beforeConstraints ;
 TYPE_4__** topoProcs ;

__attribute__((used)) static bool
TopoSort(LOCK *lock,
   EDGE *constraints,
   int nConstraints,
   PGPROC **ordering)
{
 PROC_QUEUE *waitQueue = &(lock->waitProcs);
 int queue_size = waitQueue->size;
 PGPROC *proc;
 int i,
    j,
    jj,
    k,
    kk,
    last;


 proc = (PGPROC *) waitQueue->links.next;
 for (i = 0; i < queue_size; i++)
 {
  topoProcs[i] = proc;
  proc = (PGPROC *) proc->links.next;
 }
 MemSet(beforeConstraints, 0, queue_size * sizeof(int));
 MemSet(afterConstraints, 0, queue_size * sizeof(int));
 for (i = 0; i < nConstraints; i++)
 {
  proc = constraints[i].waiter;
  Assert(proc != ((void*)0));
  jj = -1;
  for (j = queue_size; --j >= 0;)
  {
   PGPROC *waiter = topoProcs[j];

   if (waiter == proc || waiter->lockGroupLeader == proc)
   {
    Assert(waiter->waitLock == lock);
    if (jj == -1)
     jj = j;
    else
    {
     Assert(beforeConstraints[j] <= 0);
     beforeConstraints[j] = -1;
    }
   }
  }


  if (jj < 0)
   continue;






  proc = constraints[i].blocker;
  Assert(proc != ((void*)0));
  kk = -1;
  for (k = queue_size; --k >= 0;)
  {
   PGPROC *blocker = topoProcs[k];

   if (blocker == proc || blocker->lockGroupLeader == proc)
   {
    Assert(blocker->waitLock == lock);
    if (kk == -1)
     kk = k;
    else
    {
     Assert(beforeConstraints[k] <= 0);
     beforeConstraints[k] = -1;
    }
   }
  }


  if (kk < 0)
   continue;

  Assert(beforeConstraints[jj] >= 0);
  beforeConstraints[jj]++;

  constraints[i].pred = jj;
  constraints[i].link = afterConstraints[kk];
  afterConstraints[kk] = i + 1;
 }
 last = queue_size - 1;
 for (i = queue_size - 1; i >= 0;)
 {
  int c;
  int nmatches = 0;


  while (topoProcs[last] == ((void*)0))
   last--;
  for (j = last; j >= 0; j--)
  {
   if (topoProcs[j] != ((void*)0) && beforeConstraints[j] == 0)
    break;
  }


  if (j < 0)
   return 0;
  proc = topoProcs[j];
  if (proc->lockGroupLeader != ((void*)0))
   proc = proc->lockGroupLeader;
  Assert(proc != ((void*)0));
  for (c = 0; c <= last; ++c)
  {
   if (topoProcs[c] == proc || (topoProcs[c] != ((void*)0) &&
           topoProcs[c]->lockGroupLeader == proc))
   {
    ordering[i - nmatches] = topoProcs[c];
    topoProcs[c] = ((void*)0);
    ++nmatches;
   }
  }
  Assert(nmatches > 0);
  i -= nmatches;


  for (k = afterConstraints[j]; k > 0; k = constraints[k - 1].link)
   beforeConstraints[constraints[k - 1].pred]--;
 }


 return 1;
}

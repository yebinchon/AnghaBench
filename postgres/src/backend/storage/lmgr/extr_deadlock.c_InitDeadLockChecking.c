
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WAIT_ORDER ;
typedef int PGPROC ;
typedef int MemoryContext ;
typedef int EDGE ;
typedef int DEADLOCK_INFO ;


 int MaxBackends ;
 int MemoryContextSwitchTo (int ) ;
 int TopMemoryContext ;
 int* afterConstraints ;
 int* beforeConstraints ;
 int * curConstraints ;
 int * deadlockDetails ;
 int maxCurConstraints ;
 int maxPossibleConstraints ;
 scalar_t__ palloc (int) ;
 int * possibleConstraints ;
 int ** topoProcs ;
 int ** visitedProcs ;
 int ** waitOrderProcs ;
 int * waitOrders ;

void
InitDeadLockChecking(void)
{
 MemoryContext oldcxt;


 oldcxt = MemoryContextSwitchTo(TopMemoryContext);





 visitedProcs = (PGPROC **) palloc(MaxBackends * sizeof(PGPROC *));
 deadlockDetails = (DEADLOCK_INFO *) palloc(MaxBackends * sizeof(DEADLOCK_INFO));





 topoProcs = visitedProcs;
 beforeConstraints = (int *) palloc(MaxBackends * sizeof(int));
 afterConstraints = (int *) palloc(MaxBackends * sizeof(int));







 waitOrders = (WAIT_ORDER *)
  palloc((MaxBackends / 2) * sizeof(WAIT_ORDER));
 waitOrderProcs = (PGPROC **) palloc(MaxBackends * sizeof(PGPROC *));
 maxCurConstraints = MaxBackends;
 curConstraints = (EDGE *) palloc(maxCurConstraints * sizeof(EDGE));
 maxPossibleConstraints = MaxBackends * 4;
 possibleConstraints =
  (EDGE *) palloc(maxPossibleConstraints * sizeof(EDGE));

 MemoryContextSwitchTo(oldcxt);
}

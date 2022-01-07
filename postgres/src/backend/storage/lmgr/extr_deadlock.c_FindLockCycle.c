
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PGPROC ;
typedef int EDGE ;


 int FindLockCycleRecurse (int *,int ,int *,int*) ;
 scalar_t__ nDeadlockDetails ;
 scalar_t__ nVisitedProcs ;

__attribute__((used)) static bool
FindLockCycle(PGPROC *checkProc,
     EDGE *softEdges,
     int *nSoftEdges)
{
 nVisitedProcs = 0;
 nDeadlockDetails = 0;
 *nSoftEdges = 0;
 return FindLockCycleRecurse(checkProc, 0, softEdges, nSoftEdges);
}

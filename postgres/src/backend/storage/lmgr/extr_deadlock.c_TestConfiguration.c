
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * blocker; int * waiter; } ;
typedef int PGPROC ;
typedef int EDGE ;


 int ExpandConstraints (TYPE_1__*,int) ;
 scalar_t__ FindLockCycle (int *,int *,int*) ;
 int MaxBackends ;
 TYPE_1__* curConstraints ;
 int maxPossibleConstraints ;
 int nCurConstraints ;
 int nPossibleConstraints ;
 int * possibleConstraints ;

__attribute__((used)) static int
TestConfiguration(PGPROC *startProc)
{
 int softFound = 0;
 EDGE *softEdges = possibleConstraints + nPossibleConstraints;
 int nSoftEdges;
 int i;




 if (nPossibleConstraints + MaxBackends > maxPossibleConstraints)
  return -1;





 if (!ExpandConstraints(curConstraints, nCurConstraints))
  return -1;






 for (i = 0; i < nCurConstraints; i++)
 {
  if (FindLockCycle(curConstraints[i].waiter, softEdges, &nSoftEdges))
  {
   if (nSoftEdges == 0)
    return -1;
   softFound = nSoftEdges;
  }
  if (FindLockCycle(curConstraints[i].blocker, softEdges, &nSoftEdges))
  {
   if (nSoftEdges == 0)
    return -1;
   softFound = nSoftEdges;
  }
 }
 if (FindLockCycle(startProc, softEdges, &nSoftEdges))
 {
  if (nSoftEdges == 0)
   return -1;
  softFound = nSoftEdges;
 }
 return softFound;
}

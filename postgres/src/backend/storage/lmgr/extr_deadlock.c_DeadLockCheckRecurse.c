
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PGPROC ;


 int FATAL ;
 scalar_t__ MaxBackends ;
 int TestConfiguration (int *) ;
 int * curConstraints ;
 int elog (int ,char*) ;
 size_t maxCurConstraints ;
 scalar_t__ maxPossibleConstraints ;
 size_t nCurConstraints ;
 int nPossibleConstraints ;
 int * possibleConstraints ;

__attribute__((used)) static bool
DeadLockCheckRecurse(PGPROC *proc)
{
 int nEdges;
 int oldPossibleConstraints;
 bool savedList;
 int i;

 nEdges = TestConfiguration(proc);
 if (nEdges < 0)
  return 1;
 if (nEdges == 0)
  return 0;
 if (nCurConstraints >= maxCurConstraints)
  return 1;
 oldPossibleConstraints = nPossibleConstraints;
 if (nPossibleConstraints + nEdges + MaxBackends <= maxPossibleConstraints)
 {

  nPossibleConstraints += nEdges;
  savedList = 1;
 }
 else
 {

  savedList = 0;
 }




 for (i = 0; i < nEdges; i++)
 {
  if (!savedList && i > 0)
  {

   if (nEdges != TestConfiguration(proc))
    elog(FATAL, "inconsistent results during deadlock check");
  }
  curConstraints[nCurConstraints] =
   possibleConstraints[oldPossibleConstraints + i];
  nCurConstraints++;
  if (!DeadLockCheckRecurse(proc))
   return 0;

  nCurConstraints--;
 }
 nPossibleConstraints = oldPossibleConstraints;
 return 1;
}

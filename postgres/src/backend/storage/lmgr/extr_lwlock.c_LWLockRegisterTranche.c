
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Assert (int ) ;
 char const** LWLockTrancheArray ;
 int LWLockTranchesAllocated ;
 scalar_t__ repalloc (char const**,int) ;

void
LWLockRegisterTranche(int tranche_id, const char *tranche_name)
{
 Assert(LWLockTrancheArray != ((void*)0));

 if (tranche_id >= LWLockTranchesAllocated)
 {
  int i = LWLockTranchesAllocated;
  int j = LWLockTranchesAllocated;

  while (i <= tranche_id)
   i *= 2;

  LWLockTrancheArray = (const char **)
   repalloc(LWLockTrancheArray, i * sizeof(char *));
  LWLockTranchesAllocated = i;
  while (j < LWLockTranchesAllocated)
   LWLockTrancheArray[j++] = ((void*)0);
 }

 LWLockTrancheArray[tranche_id] = tranche_name;
}

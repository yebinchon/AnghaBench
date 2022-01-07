
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * ResourceOwner ;
typedef int LOCALLOCK ;
typedef int HASH_SEQ_STATUS ;


 int Assert (int ) ;
 int CurrentResourceOwner ;
 int LockMethodLocalHash ;
 int LockReassignOwner (int *,int *) ;
 int * ResourceOwnerGetParent (int ) ;
 int hash_seq_init (int *,int ) ;
 scalar_t__ hash_seq_search (int *) ;

void
LockReassignCurrentOwner(LOCALLOCK **locallocks, int nlocks)
{
 ResourceOwner parent = ResourceOwnerGetParent(CurrentResourceOwner);

 Assert(parent != ((void*)0));

 if (locallocks == ((void*)0))
 {
  HASH_SEQ_STATUS status;
  LOCALLOCK *locallock;

  hash_seq_init(&status, LockMethodLocalHash);

  while ((locallock = (LOCALLOCK *) hash_seq_search(&status)) != ((void*)0))
   LockReassignOwner(locallock, parent);
 }
 else
 {
  int i;

  for (i = nlocks - 1; i >= 0; i--)
   LockReassignOwner(locallocks[i], parent);
 }
}

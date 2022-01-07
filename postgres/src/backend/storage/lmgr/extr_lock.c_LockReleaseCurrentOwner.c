
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LOCALLOCK ;
typedef int HASH_SEQ_STATUS ;


 int LockMethodLocalHash ;
 int ReleaseLockIfHeld (int *,int) ;
 int hash_seq_init (int *,int ) ;
 scalar_t__ hash_seq_search (int *) ;

void
LockReleaseCurrentOwner(LOCALLOCK **locallocks, int nlocks)
{
 if (locallocks == ((void*)0))
 {
  HASH_SEQ_STATUS status;
  LOCALLOCK *locallock;

  hash_seq_init(&status, LockMethodLocalHash);

  while ((locallock = (LOCALLOCK *) hash_seq_search(&status)) != ((void*)0))
   ReleaseLockIfHeld(locallock, 0);
 }
 else
 {
  int i;

  for (i = nlocks - 1; i >= 0; i--)
   ReleaseLockIfHeld(locallocks[i], 0);
 }
}

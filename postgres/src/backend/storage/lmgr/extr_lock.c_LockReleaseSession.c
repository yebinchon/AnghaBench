
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ LOCKMETHODID ;
typedef int LOCALLOCK ;
typedef int HASH_SEQ_STATUS ;


 int ERROR ;
 scalar_t__ LOCALLOCK_LOCKMETHOD (int ) ;
 int LockMethodLocalHash ;
 int LockMethods ;
 int ReleaseLockIfHeld (int *,int) ;
 int elog (int ,char*,scalar_t__) ;
 int hash_seq_init (int *,int ) ;
 scalar_t__ hash_seq_search (int *) ;
 scalar_t__ lengthof (int ) ;

void
LockReleaseSession(LOCKMETHODID lockmethodid)
{
 HASH_SEQ_STATUS status;
 LOCALLOCK *locallock;

 if (lockmethodid <= 0 || lockmethodid >= lengthof(LockMethods))
  elog(ERROR, "unrecognized lock method: %d", lockmethodid);

 hash_seq_init(&status, LockMethodLocalHash);

 while ((locallock = (LOCALLOCK *) hash_seq_search(&status)) != ((void*)0))
 {

  if (LOCALLOCK_LOCKMETHOD(*locallock) != lockmethodid)
   continue;

  ReleaseLockIfHeld(locallock, 1);
 }
}

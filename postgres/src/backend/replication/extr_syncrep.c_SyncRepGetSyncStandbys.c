
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ syncrep_method; } ;
typedef int List ;


 int Assert (int ) ;
 int LWLockHeldByMe (int ) ;
 int * NIL ;
 scalar_t__ SYNC_REP_PRIORITY ;
 TYPE_1__* SyncRepConfig ;
 int * SyncRepGetSyncStandbysPriority (int*) ;
 int * SyncRepGetSyncStandbysQuorum (int*) ;
 int SyncRepLock ;

List *
SyncRepGetSyncStandbys(bool *am_sync)
{
 Assert(LWLockHeldByMe(SyncRepLock));


 if (am_sync != ((void*)0))
  *am_sync = 0;


 if (SyncRepConfig == ((void*)0))
  return NIL;

 return (SyncRepConfig->syncrep_method == SYNC_REP_PRIORITY) ?
  SyncRepGetSyncStandbysPriority(am_sync) :
  SyncRepGetSyncStandbysQuorum(am_sync);
}

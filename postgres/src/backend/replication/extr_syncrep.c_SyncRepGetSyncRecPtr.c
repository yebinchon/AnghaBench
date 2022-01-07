
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int XLogRecPtr ;
struct TYPE_2__ {scalar_t__ num_sync; scalar_t__ syncrep_method; } ;
typedef int List ;


 int Assert (int ) ;
 int InvalidXLogRecPtr ;
 int LWLockHeldByMe (int ) ;
 scalar_t__ SYNC_REP_PRIORITY ;
 TYPE_1__* SyncRepConfig ;
 int SyncRepGetNthLatestSyncRecPtr (int *,int *,int *,int *,scalar_t__) ;
 int SyncRepGetOldestSyncRecPtr (int *,int *,int *,int *) ;
 int * SyncRepGetSyncStandbys (int*) ;
 int SyncRepLock ;
 int list_free (int *) ;
 scalar_t__ list_length (int *) ;

__attribute__((used)) static bool
SyncRepGetSyncRecPtr(XLogRecPtr *writePtr, XLogRecPtr *flushPtr,
      XLogRecPtr *applyPtr, bool *am_sync)
{
 List *sync_standbys;

 Assert(LWLockHeldByMe(SyncRepLock));

 *writePtr = InvalidXLogRecPtr;
 *flushPtr = InvalidXLogRecPtr;
 *applyPtr = InvalidXLogRecPtr;
 *am_sync = 0;


 sync_standbys = SyncRepGetSyncStandbys(am_sync);





 if (!(*am_sync) ||
  SyncRepConfig == ((void*)0) ||
  list_length(sync_standbys) < SyncRepConfig->num_sync)
 {
  list_free(sync_standbys);
  return 0;
 }
 if (SyncRepConfig->syncrep_method == SYNC_REP_PRIORITY)
 {
  SyncRepGetOldestSyncRecPtr(writePtr, flushPtr, applyPtr,
           sync_standbys);
 }
 else
 {
  SyncRepGetNthLatestSyncRecPtr(writePtr, flushPtr, applyPtr,
           sync_standbys, SyncRepConfig->num_sync);
 }

 list_free(sync_standbys);
 return 1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int XLogRecPtr ;
typedef scalar_t__ WalSndState ;
struct TYPE_5__ {int pid; scalar_t__ state; scalar_t__ sync_standby_priority; int mutex; int flush; } ;
typedef TYPE_1__ WalSnd ;
struct TYPE_7__ {scalar_t__ syncrep_method; } ;
struct TYPE_6__ {TYPE_1__* walsnds; } ;
typedef int List ;


 int Assert (int) ;
 TYPE_1__ volatile* MyWalSnd ;
 int * NIL ;
 scalar_t__ SYNC_REP_QUORUM ;
 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;
 TYPE_3__* SyncRepConfig ;
 scalar_t__ WALSNDSTATE_STOPPING ;
 scalar_t__ WALSNDSTATE_STREAMING ;
 TYPE_2__* WalSndCtl ;
 scalar_t__ XLogRecPtrIsInvalid (int ) ;
 int * lappend_int (int *,int) ;
 int max_wal_senders ;

__attribute__((used)) static List *
SyncRepGetSyncStandbysQuorum(bool *am_sync)
{
 List *result = NIL;
 int i;
 volatile WalSnd *walsnd;


 Assert(SyncRepConfig->syncrep_method == SYNC_REP_QUORUM);

 for (i = 0; i < max_wal_senders; i++)
 {
  XLogRecPtr flush;
  WalSndState state;
  int pid;

  walsnd = &WalSndCtl->walsnds[i];

  SpinLockAcquire(&walsnd->mutex);
  pid = walsnd->pid;
  flush = walsnd->flush;
  state = walsnd->state;
  SpinLockRelease(&walsnd->mutex);


  if (pid == 0)
   continue;


  if (state != WALSNDSTATE_STREAMING &&
   state != WALSNDSTATE_STOPPING)
   continue;


  if (walsnd->sync_standby_priority == 0)
   continue;


  if (XLogRecPtrIsInvalid(flush))
   continue;





  result = lappend_int(result, i);
  if (am_sync != ((void*)0) && walsnd == MyWalSnd)
   *am_sync = 1;
 }

 return result;
}

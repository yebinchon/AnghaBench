
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int VirtualTransactionId ;
typedef scalar_t__ TimestampTz ;
struct TYPE_7__ {scalar_t__ fin_time; int type; int id; } ;
struct TYPE_6__ {int locktag_type; } ;
typedef TYPE_1__ LOCKTAG ;
typedef TYPE_2__ EnableTimeoutParams ;


 int AccessExclusiveLock ;
 int Assert (int ) ;
 scalar_t__ GetCurrentTimestamp () ;
 int * GetLockConflicts (TYPE_1__*,int ,int *) ;
 scalar_t__ GetStandbyLimitTime () ;
 int InHotStandby ;
 int PG_WAIT_LOCK ;
 int PROCSIG_RECOVERY_CONFLICT_LOCK ;
 int ProcWaitForSignal (int) ;
 int ResolveRecoveryConflictWithVirtualXIDs (int *,int ) ;
 int STANDBY_LOCK_TIMEOUT ;
 int TMPARAM_AT ;
 int disable_all_timeouts (int) ;
 int enable_timeouts (TYPE_2__*,int) ;

void
ResolveRecoveryConflictWithLock(LOCKTAG locktag)
{
 TimestampTz ltime;

 Assert(InHotStandby);

 ltime = GetStandbyLimitTime();

 if (GetCurrentTimestamp() >= ltime)
 {



  VirtualTransactionId *backends;

  backends = GetLockConflicts(&locktag, AccessExclusiveLock, ((void*)0));
  ResolveRecoveryConflictWithVirtualXIDs(backends,
              PROCSIG_RECOVERY_CONFLICT_LOCK);
 }
 else
 {



  EnableTimeoutParams timeouts[1];

  timeouts[0].id = STANDBY_LOCK_TIMEOUT;
  timeouts[0].type = TMPARAM_AT;
  timeouts[0].fin_time = ltime;
  enable_timeouts(timeouts, 1);
 }


 ProcWaitForSignal(PG_WAIT_LOCK | locktag.locktag_type);







 disable_all_timeouts(0);
}

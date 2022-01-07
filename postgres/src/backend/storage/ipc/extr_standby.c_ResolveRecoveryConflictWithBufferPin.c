
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ TimestampTz ;
struct TYPE_3__ {int delay_ms; int type; int id; scalar_t__ fin_time; } ;
typedef TYPE_1__ EnableTimeoutParams ;


 int Assert (int ) ;
 int DeadlockTimeout ;
 scalar_t__ GetCurrentTimestamp () ;
 scalar_t__ GetStandbyLimitTime () ;
 int InHotStandby ;
 int PG_WAIT_BUFFER_PIN ;
 int PROCSIG_RECOVERY_CONFLICT_BUFFERPIN ;
 int ProcWaitForSignal (int ) ;
 int STANDBY_DEADLOCK_TIMEOUT ;
 int STANDBY_TIMEOUT ;
 int SendRecoveryConflictWithBufferPin (int ) ;
 int TMPARAM_AFTER ;
 int TMPARAM_AT ;
 int disable_all_timeouts (int) ;
 int enable_timeout_after (int ,int ) ;
 int enable_timeouts (TYPE_1__*,int) ;

void
ResolveRecoveryConflictWithBufferPin(void)
{
 TimestampTz ltime;

 Assert(InHotStandby);

 ltime = GetStandbyLimitTime();

 if (ltime == 0)
 {




  enable_timeout_after(STANDBY_DEADLOCK_TIMEOUT, DeadlockTimeout);
 }
 else if (GetCurrentTimestamp() >= ltime)
 {



  SendRecoveryConflictWithBufferPin(PROCSIG_RECOVERY_CONFLICT_BUFFERPIN);
 }
 else
 {




  EnableTimeoutParams timeouts[2];

  timeouts[0].id = STANDBY_TIMEOUT;
  timeouts[0].type = TMPARAM_AT;
  timeouts[0].fin_time = ltime;
  timeouts[1].id = STANDBY_DEADLOCK_TIMEOUT;
  timeouts[1].type = TMPARAM_AFTER;
  timeouts[1].delay_ms = DeadlockTimeout;
  enable_timeouts(timeouts, 2);
 }


 ProcWaitForSignal(PG_WAIT_BUFFER_PIN);







 disable_all_timeouts(0);
}

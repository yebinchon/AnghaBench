
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PROCSIG_RECOVERY_CONFLICT_BUFFERPIN ;
 int STANDBY_DEADLOCK_TIMEOUT ;
 int SendRecoveryConflictWithBufferPin (int ) ;
 int disable_timeout (int ,int) ;

void
StandbyTimeoutHandler(void)
{

 disable_timeout(STANDBY_DEADLOCK_TIMEOUT, 0);

 SendRecoveryConflictWithBufferPin(PROCSIG_RECOVERY_CONFLICT_BUFFERPIN);
}

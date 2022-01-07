
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PROCSIG_RECOVERY_CONFLICT_STARTUP_DEADLOCK ;
 int SendRecoveryConflictWithBufferPin (int ) ;

void
StandbyDeadLockHandler(void)
{
 SendRecoveryConflictWithBufferPin(PROCSIG_RECOVERY_CONFLICT_STARTUP_DEADLOCK);
}

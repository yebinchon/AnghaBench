
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ProcSignalReason ;


 int Assert (int) ;
 int CancelDBBackends (int ,scalar_t__,int) ;
 int InvalidOid ;
 scalar_t__ PROCSIG_RECOVERY_CONFLICT_BUFFERPIN ;
 scalar_t__ PROCSIG_RECOVERY_CONFLICT_STARTUP_DEADLOCK ;

__attribute__((used)) static void
SendRecoveryConflictWithBufferPin(ProcSignalReason reason)
{
 Assert(reason == PROCSIG_RECOVERY_CONFLICT_BUFFERPIN ||
     reason == PROCSIG_RECOVERY_CONFLICT_STARTUP_DEADLOCK);







 CancelDBBackends(InvalidOid, reason, 0);
}

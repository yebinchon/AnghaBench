
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Assert (int) ;
 int ERRCODE_T_R_DEADLOCK_DETECTED ;
 int ERROR ;
 int HoldingBufferPinThatDelaysRecovery () ;
 int InRecovery ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail (char*) ;
 int errmsg (char*) ;

void
CheckRecoveryConflictDeadlock(void)
{
 Assert(!InRecovery);

 if (!HoldingBufferPinThatDelaysRecovery())
  return;
 ereport(ERROR,
   (errcode(ERRCODE_T_R_DEADLOCK_DETECTED),
    errmsg("canceling statement due to conflict with recovery"),
    errdetail("User transaction caused buffer deadlock with recovery.")));
}

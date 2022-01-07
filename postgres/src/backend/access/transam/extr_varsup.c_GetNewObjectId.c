
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ nextOid; scalar_t__ oidCount; } ;
typedef scalar_t__ Oid ;


 int ERROR ;
 scalar_t__ FirstBootstrapObjectId ;
 void* FirstNormalObjectId ;
 scalar_t__ IsPostmasterEnvironment ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 int OidGenLock ;
 scalar_t__ RecoveryInProgress () ;
 TYPE_1__* ShmemVariableCache ;
 scalar_t__ VAR_OID_PREFETCH ;
 int XLogPutNextOid (scalar_t__) ;
 int elog (int ,char*) ;

Oid
GetNewObjectId(void)
{
 Oid result;


 if (RecoveryInProgress())
  elog(ERROR, "cannot assign OIDs during recovery");

 LWLockAcquire(OidGenLock, LW_EXCLUSIVE);
 if (ShmemVariableCache->nextOid < ((Oid) FirstNormalObjectId))
 {
  if (IsPostmasterEnvironment)
  {

   ShmemVariableCache->nextOid = FirstNormalObjectId;
   ShmemVariableCache->oidCount = 0;
  }
  else
  {

   if (ShmemVariableCache->nextOid < ((Oid) FirstBootstrapObjectId))
   {

    ShmemVariableCache->nextOid = FirstNormalObjectId;
    ShmemVariableCache->oidCount = 0;
   }
  }
 }


 if (ShmemVariableCache->oidCount == 0)
 {
  XLogPutNextOid(ShmemVariableCache->nextOid + VAR_OID_PREFETCH);
  ShmemVariableCache->oidCount = VAR_OID_PREFETCH;
 }

 result = ShmemVariableCache->nextOid;

 (ShmemVariableCache->nextOid)++;
 (ShmemVariableCache->oidCount)--;

 LWLockRelease(OidGenLock);

 return result;
}

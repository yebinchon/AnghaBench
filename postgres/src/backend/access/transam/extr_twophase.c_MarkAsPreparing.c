
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int TransactionId ;
typedef int TimestampTz ;
struct TYPE_6__ {int numPrepXacts; TYPE_1__** prepXacts; TYPE_1__* freeGXacts; } ;
struct TYPE_5__ {int ondisk; struct TYPE_5__* next; int gid; } ;
typedef int Oid ;
typedef TYPE_1__* GlobalTransaction ;


 int Assert (int) ;
 int AtProcExit_Twophase ;
 int ERRCODE_DUPLICATE_OBJECT ;
 int ERRCODE_INVALID_PARAMETER_VALUE ;
 int ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE ;
 int ERRCODE_OUT_OF_MEMORY ;
 int ERROR ;
 scalar_t__ GIDSIZE ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 int MarkAsPreparingGuts (TYPE_1__*,int ,char const*,int ,int ,int ) ;
 TYPE_2__* TwoPhaseState ;
 int TwoPhaseStateLock ;
 int before_shmem_exit (int ,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errhint (char*,...) ;
 int errmsg (char*,...) ;
 int max_prepared_xacts ;
 scalar_t__ strcmp (int ,char const*) ;
 scalar_t__ strlen (char const*) ;
 int twophaseExitRegistered ;

GlobalTransaction
MarkAsPreparing(TransactionId xid, const char *gid,
    TimestampTz prepared_at, Oid owner, Oid databaseid)
{
 GlobalTransaction gxact;
 int i;

 if (strlen(gid) >= GIDSIZE)
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
     errmsg("transaction identifier \"%s\" is too long",
      gid)));


 if (max_prepared_xacts == 0)
  ereport(ERROR,
    (errcode(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
     errmsg("prepared transactions are disabled"),
     errhint("Set max_prepared_transactions to a nonzero value.")));


 if (!twophaseExitRegistered)
 {
  before_shmem_exit(AtProcExit_Twophase, 0);
  twophaseExitRegistered = 1;
 }

 LWLockAcquire(TwoPhaseStateLock, LW_EXCLUSIVE);


 for (i = 0; i < TwoPhaseState->numPrepXacts; i++)
 {
  gxact = TwoPhaseState->prepXacts[i];
  if (strcmp(gxact->gid, gid) == 0)
  {
   ereport(ERROR,
     (errcode(ERRCODE_DUPLICATE_OBJECT),
      errmsg("transaction identifier \"%s\" is already in use",
       gid)));
  }
 }


 if (TwoPhaseState->freeGXacts == ((void*)0))
  ereport(ERROR,
    (errcode(ERRCODE_OUT_OF_MEMORY),
     errmsg("maximum number of prepared transactions reached"),
     errhint("Increase max_prepared_transactions (currently %d).",
       max_prepared_xacts)));
 gxact = TwoPhaseState->freeGXacts;
 TwoPhaseState->freeGXacts = gxact->next;

 MarkAsPreparingGuts(gxact, xid, gid, prepared_at, owner, databaseid);

 gxact->ondisk = 0;


 Assert(TwoPhaseState->numPrepXacts < max_prepared_xacts);
 TwoPhaseState->prepXacts[TwoPhaseState->numPrepXacts++] = gxact;

 LWLockRelease(TwoPhaseStateLock);

 return gxact;
}

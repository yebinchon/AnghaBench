
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {TYPE_1__* allProcs; } ;
struct TYPE_9__ {int numPrepXacts; TYPE_2__** prepXacts; } ;
struct TYPE_8__ {size_t pgprocno; scalar_t__ locking_backend; scalar_t__ owner; int gid; int valid; } ;
struct TYPE_7__ {scalar_t__ databaseId; } ;
typedef TYPE_1__ PGPROC ;
typedef scalar_t__ Oid ;
typedef TYPE_2__* GlobalTransaction ;


 int AtProcExit_Twophase ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERRCODE_INSUFFICIENT_PRIVILEGE ;
 int ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE ;
 int ERRCODE_UNDEFINED_OBJECT ;
 int ERROR ;
 scalar_t__ InvalidBackendId ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 scalar_t__ MyBackendId ;
 scalar_t__ MyDatabaseId ;
 TYPE_2__* MyLockedGxact ;
 TYPE_4__* ProcGlobal ;
 TYPE_3__* TwoPhaseState ;
 int TwoPhaseStateLock ;
 int before_shmem_exit (int ,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errhint (char*) ;
 int errmsg (char*,...) ;
 scalar_t__ strcmp (int ,char const*) ;
 int superuser_arg (scalar_t__) ;
 int twophaseExitRegistered ;

__attribute__((used)) static GlobalTransaction
LockGXact(const char *gid, Oid user)
{
 int i;


 if (!twophaseExitRegistered)
 {
  before_shmem_exit(AtProcExit_Twophase, 0);
  twophaseExitRegistered = 1;
 }

 LWLockAcquire(TwoPhaseStateLock, LW_EXCLUSIVE);

 for (i = 0; i < TwoPhaseState->numPrepXacts; i++)
 {
  GlobalTransaction gxact = TwoPhaseState->prepXacts[i];
  PGPROC *proc = &ProcGlobal->allProcs[gxact->pgprocno];


  if (!gxact->valid)
   continue;
  if (strcmp(gxact->gid, gid) != 0)
   continue;


  if (gxact->locking_backend != InvalidBackendId)
   ereport(ERROR,
     (errcode(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
      errmsg("prepared transaction with identifier \"%s\" is busy",
       gid)));

  if (user != gxact->owner && !superuser_arg(user))
   ereport(ERROR,
     (errcode(ERRCODE_INSUFFICIENT_PRIVILEGE),
      errmsg("permission denied to finish prepared transaction"),
      errhint("Must be superuser or the user that prepared the transaction.")));







  if (MyDatabaseId != proc->databaseId)
   ereport(ERROR,
     (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
      errmsg("prepared transaction belongs to another database"),
      errhint("Connect to the database where the transaction was prepared to finish it.")));


  gxact->locking_backend = MyBackendId;
  MyLockedGxact = gxact;

  LWLockRelease(TwoPhaseStateLock);

  return gxact;
 }

 LWLockRelease(TwoPhaseStateLock);

 ereport(ERROR,
   (errcode(ERRCODE_UNDEFINED_OBJECT),
    errmsg("prepared transaction with identifier \"%s\" does not exist",
     gid)));


 return ((void*)0);
}

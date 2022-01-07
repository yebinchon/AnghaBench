
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ LastSxactCommitSeqNo; } ;
struct TYPE_11__ {int flags; scalar_t__ prepareSeqNo; int inConflicts; } ;
struct TYPE_10__ {int inLink; TYPE_2__* sxactOut; } ;
typedef TYPE_1__* RWConflict ;


 int Assert (int) ;
 int ERRCODE_T_R_SERIALIZATION_FAILURE ;
 int ERROR ;
 TYPE_2__* InvalidSerializableXact ;
 int IsolationIsSerializable () ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 TYPE_2__* MySerializableXact ;
 TYPE_7__* PredXact ;
 int RWConflictData ;
 scalar_t__ SHMQueueNext (int *,int *,int ) ;
 int SXACT_FLAG_DOOMED ;
 int SXACT_FLAG_PREPARED ;
 int SerializableXactHashLock ;
 int SxactIsCommitted (TYPE_2__*) ;
 scalar_t__ SxactIsDoomed (TYPE_2__*) ;
 int SxactIsPartiallyReleased (TYPE_2__*) ;
 scalar_t__ SxactIsPrepared (TYPE_2__*) ;
 int SxactIsReadOnly (TYPE_2__*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail_internal (char*) ;
 int errhint (char*) ;
 int errmsg (char*) ;
 int inLink ;
 int offsetof (int ,int ) ;

void
PreCommit_CheckForSerializationFailure(void)
{
 RWConflict nearConflict;

 if (MySerializableXact == InvalidSerializableXact)
  return;

 Assert(IsolationIsSerializable());

 LWLockAcquire(SerializableXactHashLock, LW_EXCLUSIVE);


 if (SxactIsDoomed(MySerializableXact))
 {
  Assert(!SxactIsPartiallyReleased(MySerializableXact));
  LWLockRelease(SerializableXactHashLock);
  ereport(ERROR,
    (errcode(ERRCODE_T_R_SERIALIZATION_FAILURE),
     errmsg("could not serialize access due to read/write dependencies among transactions"),
     errdetail_internal("Reason code: Canceled on identification as a pivot, during commit attempt."),
     errhint("The transaction might succeed if retried.")));
 }

 nearConflict = (RWConflict)
  SHMQueueNext(&MySerializableXact->inConflicts,
      &MySerializableXact->inConflicts,
      offsetof(RWConflictData, inLink));
 while (nearConflict)
 {
  if (!SxactIsCommitted(nearConflict->sxactOut)
   && !SxactIsDoomed(nearConflict->sxactOut))
  {
   RWConflict farConflict;

   farConflict = (RWConflict)
    SHMQueueNext(&nearConflict->sxactOut->inConflicts,
        &nearConflict->sxactOut->inConflicts,
        offsetof(RWConflictData, inLink));
   while (farConflict)
   {
    if (farConflict->sxactOut == MySerializableXact
     || (!SxactIsCommitted(farConflict->sxactOut)
      && !SxactIsReadOnly(farConflict->sxactOut)
      && !SxactIsDoomed(farConflict->sxactOut)))
    {






     if (SxactIsPrepared(nearConflict->sxactOut))
     {
      LWLockRelease(SerializableXactHashLock);
      ereport(ERROR,
        (errcode(ERRCODE_T_R_SERIALIZATION_FAILURE),
         errmsg("could not serialize access due to read/write dependencies among transactions"),
         errdetail_internal("Reason code: Canceled on commit attempt with conflict in from prepared pivot."),
         errhint("The transaction might succeed if retried.")));
     }
     nearConflict->sxactOut->flags |= SXACT_FLAG_DOOMED;
     break;
    }
    farConflict = (RWConflict)
     SHMQueueNext(&nearConflict->sxactOut->inConflicts,
         &farConflict->inLink,
         offsetof(RWConflictData, inLink));
   }
  }

  nearConflict = (RWConflict)
   SHMQueueNext(&MySerializableXact->inConflicts,
       &nearConflict->inLink,
       offsetof(RWConflictData, inLink));
 }

 MySerializableXact->prepareSeqNo = ++(PredXact->LastSxactCommitSeqNo);
 MySerializableXact->flags |= SXACT_FLAG_PREPARED;

 LWLockRelease(SerializableXactHashLock);
}

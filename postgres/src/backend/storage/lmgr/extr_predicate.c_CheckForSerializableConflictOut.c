
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


typedef int TransactionId ;
struct TYPE_25__ {int t_data; } ;
struct TYPE_21__ {scalar_t__ lastCommitBeforeSnapshot; scalar_t__ earliestOutConflictCommit; } ;
struct TYPE_24__ {TYPE_1__ SeqNo; int flags; int topXid; int inConflicts; } ;
struct TYPE_23__ {TYPE_4__* myXact; } ;
struct TYPE_22__ {int xid; } ;
typedef int Snapshot ;
typedef scalar_t__ SerCommitSeqNo ;
typedef TYPE_2__ SERIALIZABLEXIDTAG ;
typedef TYPE_3__ SERIALIZABLEXID ;
typedef TYPE_4__ SERIALIZABLEXACT ;
typedef int Relation ;
typedef TYPE_5__* HeapTuple ;
typedef int HTSV_Result ;
typedef int Buffer ;


 int Assert (int ) ;
 int ERRCODE_T_R_SERIALIZATION_FAILURE ;
 int ERROR ;
 int FlagRWConflict (TYPE_4__*,TYPE_4__*) ;
 int GetTopTransactionIdIfAny () ;
 int HASH_FIND ;





 int HeapTupleHeaderGetUpdateXid (int ) ;
 int HeapTupleHeaderGetXmin (int ) ;
 int HeapTupleSatisfiesVacuum (TYPE_5__*,int ,int ) ;
 scalar_t__ InvalidSerCommitSeqNo ;
 int InvalidTransactionId ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 TYPE_4__* MySerializableXact ;
 scalar_t__ OldSerXidGetMinConflictCommitSeqNo (int ) ;
 scalar_t__ RWConflictExists (TYPE_4__*,TYPE_4__*) ;
 int SHMQueueEmpty (int *) ;
 int SXACT_FLAG_DOOMED ;
 int SXACT_FLAG_SUMMARY_CONFLICT_OUT ;
 int SerializableXactHashLock ;
 int SerializableXidHash ;
 int SerializationNeededForRead (int ,int ) ;
 int SubTransGetTopmostTransaction (int ) ;
 int SxactHasConflictOut (TYPE_4__*) ;
 scalar_t__ SxactHasSummaryConflictIn (TYPE_4__*) ;
 scalar_t__ SxactHasSummaryConflictOut (TYPE_4__*) ;
 scalar_t__ SxactIsCommitted (TYPE_4__*) ;
 scalar_t__ SxactIsDoomed (TYPE_4__*) ;
 int SxactIsPrepared (TYPE_4__*) ;
 scalar_t__ SxactIsReadOnly (TYPE_4__*) ;
 int TransactionIdEquals (int ,int ) ;
 int TransactionIdFollowsOrEquals (int ,int ) ;
 int TransactionIdIsValid (int ) ;
 scalar_t__ TransactionIdPrecedes (int ,int ) ;
 int TransactionXmin ;
 int XidIsConcurrent (int ) ;
 int elog (int ,char*,int) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail_internal (char*,...) ;
 int errhint (char*) ;
 int errmsg (char*) ;
 scalar_t__ hash_search (int ,TYPE_2__*,int ,int *) ;

void
CheckForSerializableConflictOut(bool visible, Relation relation,
        HeapTuple tuple, Buffer buffer,
        Snapshot snapshot)
{
 TransactionId xid;
 SERIALIZABLEXIDTAG sxidtag;
 SERIALIZABLEXID *sxid;
 SERIALIZABLEXACT *sxact;
 HTSV_Result htsvResult;

 if (!SerializationNeededForRead(relation, snapshot))
  return;


 if (SxactIsDoomed(MySerializableXact))
 {
  ereport(ERROR,
    (errcode(ERRCODE_T_R_SERIALIZATION_FAILURE),
     errmsg("could not serialize access due to read/write dependencies among transactions"),
     errdetail_internal("Reason code: Canceled on identification as a pivot, during conflict out checking."),
     errhint("The transaction might succeed if retried.")));
 }
 htsvResult = HeapTupleSatisfiesVacuum(tuple, TransactionXmin, buffer);
 switch (htsvResult)
 {
  case 129:
   if (visible)
    return;
   xid = HeapTupleHeaderGetXmin(tuple->t_data);
   break;
  case 128:
   if (!visible)
    return;
   xid = HeapTupleHeaderGetUpdateXid(tuple->t_data);
   break;
  case 131:
   xid = HeapTupleHeaderGetUpdateXid(tuple->t_data);
   break;
  case 130:
   xid = HeapTupleHeaderGetXmin(tuple->t_data);
   break;
  case 132:
   return;
  default:






   elog(ERROR, "unrecognized return value from HeapTupleSatisfiesVacuum: %u", htsvResult);







   xid = InvalidTransactionId;
 }
 Assert(TransactionIdIsValid(xid));
 Assert(TransactionIdFollowsOrEquals(xid, TransactionXmin));





 if (TransactionIdEquals(xid, GetTopTransactionIdIfAny()))
  return;
 xid = SubTransGetTopmostTransaction(xid);
 if (TransactionIdPrecedes(xid, TransactionXmin))
  return;
 if (TransactionIdEquals(xid, GetTopTransactionIdIfAny()))
  return;




 sxidtag.xid = xid;
 LWLockAcquire(SerializableXactHashLock, LW_EXCLUSIVE);
 sxid = (SERIALIZABLEXID *)
  hash_search(SerializableXidHash, &sxidtag, HASH_FIND, ((void*)0));
 if (!sxid)
 {




  SerCommitSeqNo conflictCommitSeqNo;

  conflictCommitSeqNo = OldSerXidGetMinConflictCommitSeqNo(xid);
  if (conflictCommitSeqNo != 0)
  {
   if (conflictCommitSeqNo != InvalidSerCommitSeqNo
    && (!SxactIsReadOnly(MySerializableXact)
     || conflictCommitSeqNo
     <= MySerializableXact->SeqNo.lastCommitBeforeSnapshot))
    ereport(ERROR,
      (errcode(ERRCODE_T_R_SERIALIZATION_FAILURE),
       errmsg("could not serialize access due to read/write dependencies among transactions"),
       errdetail_internal("Reason code: Canceled on conflict out to old pivot %u.", xid),
       errhint("The transaction might succeed if retried.")));

   if (SxactHasSummaryConflictIn(MySerializableXact)
    || !SHMQueueEmpty(&MySerializableXact->inConflicts))
    ereport(ERROR,
      (errcode(ERRCODE_T_R_SERIALIZATION_FAILURE),
       errmsg("could not serialize access due to read/write dependencies among transactions"),
       errdetail_internal("Reason code: Canceled on identification as a pivot, with conflict out to old committed transaction %u.", xid),
       errhint("The transaction might succeed if retried.")));

   MySerializableXact->flags |= SXACT_FLAG_SUMMARY_CONFLICT_OUT;
  }


  LWLockRelease(SerializableXactHashLock);
  return;
 }
 sxact = sxid->myXact;
 Assert(TransactionIdEquals(sxact->topXid, xid));
 if (sxact == MySerializableXact || SxactIsDoomed(sxact))
 {

  LWLockRelease(SerializableXactHashLock);
  return;
 }







 if (SxactHasSummaryConflictOut(sxact))
 {
  if (!SxactIsPrepared(sxact))
  {
   sxact->flags |= SXACT_FLAG_DOOMED;
   LWLockRelease(SerializableXactHashLock);
   return;
  }
  else
  {
   LWLockRelease(SerializableXactHashLock);
   ereport(ERROR,
     (errcode(ERRCODE_T_R_SERIALIZATION_FAILURE),
      errmsg("could not serialize access due to read/write dependencies among transactions"),
      errdetail_internal("Reason code: Canceled on conflict out to old pivot."),
      errhint("The transaction might succeed if retried.")));
  }
 }






 if (SxactIsReadOnly(MySerializableXact)
  && SxactIsCommitted(sxact)
  && !SxactHasSummaryConflictOut(sxact)
  && (!SxactHasConflictOut(sxact)
   || MySerializableXact->SeqNo.lastCommitBeforeSnapshot < sxact->SeqNo.earliestOutConflictCommit))
 {

  LWLockRelease(SerializableXactHashLock);
  return;
 }

 if (!XidIsConcurrent(xid))
 {

  LWLockRelease(SerializableXactHashLock);
  return;
 }

 if (RWConflictExists(MySerializableXact, sxact))
 {

  LWLockRelease(SerializableXactHashLock);
  return;
 }





 FlagRWConflict(MySerializableXact, sxact);
 LWLockRelease(SerializableXactHashLock);
}

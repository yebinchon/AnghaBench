
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int TransactionId ;
struct TYPE_5__ {int t_ctid; } ;
struct TYPE_4__ {TYPE_3__* t_data; int t_self; } ;
typedef int TM_Result ;
typedef int MultiXactStatus ;
typedef int LockTupleMode ;
typedef TYPE_1__* HeapTuple ;


 scalar_t__ DoLockModesConflict (int ,int ) ;
 scalar_t__ HeapTupleHeaderIndicatesMovedPartitions (TYPE_3__*) ;
 int ISUPDATE_from_mxstatus (int ) ;
 int ItemPointerEquals (int *,int *) ;
 int LOCKMODE_from_mxstatus (int ) ;
 int TM_Deleted ;
 int TM_Ok ;
 int TM_SelfModified ;
 int TM_Updated ;
 scalar_t__ TransactionIdDidAbort (int ) ;
 scalar_t__ TransactionIdDidCommit (int ) ;
 scalar_t__ TransactionIdIsCurrentTransactionId (int ) ;
 scalar_t__ TransactionIdIsInProgress (int ) ;
 int get_mxact_status_for_lock (int ,int) ;

__attribute__((used)) static TM_Result
test_lockmode_for_conflict(MultiXactStatus status, TransactionId xid,
         LockTupleMode mode, HeapTuple tup,
         bool *needwait)
{
 MultiXactStatus wantedstatus;

 *needwait = 0;
 wantedstatus = get_mxact_status_for_lock(mode, 0);






 if (TransactionIdIsCurrentTransactionId(xid))
 {





  return TM_SelfModified;
 }
 else if (TransactionIdIsInProgress(xid))
 {






  if (DoLockModesConflict(LOCKMODE_from_mxstatus(status),
        LOCKMODE_from_mxstatus(wantedstatus)))
  {
   *needwait = 1;
  }





  return TM_Ok;
 }
 else if (TransactionIdDidAbort(xid))
  return TM_Ok;
 else if (TransactionIdDidCommit(xid))
 {
  if (!ISUPDATE_from_mxstatus(status))
   return TM_Ok;

  if (DoLockModesConflict(LOCKMODE_from_mxstatus(status),
        LOCKMODE_from_mxstatus(wantedstatus)))
  {

   if (!ItemPointerEquals(&tup->t_self, &tup->t_data->t_ctid) ||
    HeapTupleHeaderIndicatesMovedPartitions(tup->t_data))
    return TM_Updated;
   else
    return TM_Deleted;
  }

  return TM_Ok;
 }


 return TM_Ok;
}

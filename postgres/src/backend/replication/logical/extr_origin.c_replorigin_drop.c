
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int xlrec ;
struct TYPE_8__ {scalar_t__ node_id; } ;
typedef TYPE_1__ xl_replorigin_drop ;
struct TYPE_10__ {int t_self; } ;
struct TYPE_9__ {scalar_t__ roident; scalar_t__ acquired_by; void* local_lsn; void* remote_lsn; int origin_cv; } ;
typedef TYPE_2__ ReplicationState ;
typedef scalar_t__ RepOriginId ;
typedef int Relation ;
typedef TYPE_3__* HeapTuple ;
typedef int ConditionVariable ;


 int Assert (int ) ;
 int CatalogTupleDelete (int ,int *) ;
 int CommandCounterIncrement () ;
 int ConditionVariableCancelSleep () ;
 int ConditionVariableSleep (int *,int ) ;
 int ERRCODE_OBJECT_IN_USE ;
 int ERROR ;
 int ExclusiveLock ;
 int HeapTupleIsValid (TYPE_3__*) ;
 scalar_t__ InvalidRepOriginId ;
 void* InvalidXLogRecPtr ;
 int IsTransactionState () ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 int ObjectIdGetDatum (scalar_t__) ;
 int REPLORIGIDENT ;
 int RM_REPLORIGIN_ID ;
 int ReleaseSysCache (TYPE_3__*) ;
 int ReplicationOriginLock ;
 int ReplicationOriginRelationId ;
 TYPE_3__* SearchSysCache1 (int ,int ) ;
 int WAIT_EVENT_REPLICATION_ORIGIN_DROP ;
 int XLOG_REPLORIGIN_DROP ;
 int XLogBeginInsert () ;
 int XLogInsert (int ,int ) ;
 int XLogRegisterData (char*,int) ;
 int elog (int ,char*,scalar_t__) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,scalar_t__,scalar_t__) ;
 int max_replication_slots ;
 TYPE_2__* replication_states ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

void
replorigin_drop(RepOriginId roident, bool nowait)
{
 HeapTuple tuple;
 Relation rel;
 int i;

 Assert(IsTransactionState());





 rel = table_open(ReplicationOriginRelationId, ExclusiveLock);




restart:
 tuple = ((void*)0);
 LWLockAcquire(ReplicationOriginLock, LW_EXCLUSIVE);

 for (i = 0; i < max_replication_slots; i++)
 {
  ReplicationState *state = &replication_states[i];

  if (state->roident == roident)
  {

   if (state->acquired_by != 0)
   {
    ConditionVariable *cv;

    if (nowait)
     ereport(ERROR,
       (errcode(ERRCODE_OBJECT_IN_USE),
        errmsg("could not drop replication origin with OID %d, in use by PID %d",
         state->roident,
         state->acquired_by)));
    cv = &state->origin_cv;

    LWLockRelease(ReplicationOriginLock);

    ConditionVariableSleep(cv, WAIT_EVENT_REPLICATION_ORIGIN_DROP);
    goto restart;
   }


   {
    xl_replorigin_drop xlrec;

    xlrec.node_id = roident;
    XLogBeginInsert();
    XLogRegisterData((char *) (&xlrec), sizeof(xlrec));
    XLogInsert(RM_REPLORIGIN_ID, XLOG_REPLORIGIN_DROP);
   }


   state->roident = InvalidRepOriginId;
   state->remote_lsn = InvalidXLogRecPtr;
   state->local_lsn = InvalidXLogRecPtr;
   break;
  }
 }
 LWLockRelease(ReplicationOriginLock);
 ConditionVariableCancelSleep();




 tuple = SearchSysCache1(REPLORIGIDENT, ObjectIdGetDatum(roident));
 if (!HeapTupleIsValid(tuple))
  elog(ERROR, "cache lookup failed for replication origin with oid %u",
    roident);

 CatalogTupleDelete(rel, &tuple->t_self);
 ReleaseSysCache(tuple);

 CommandCounterIncrement();


 table_close(rel, ExclusiveLock);
}

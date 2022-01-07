
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int xlrec ;
struct TYPE_4__ {int force; scalar_t__ node_id; scalar_t__ remote_lsn; } ;
typedef TYPE_1__ xl_replorigin_set ;
typedef scalar_t__ XLogRecPtr ;
struct TYPE_5__ {scalar_t__ roident; scalar_t__ acquired_by; scalar_t__ remote_lsn; scalar_t__ local_lsn; int lock; } ;
typedef TYPE_2__ ReplicationState ;
typedef scalar_t__ RepOriginId ;


 int Assert (int) ;
 scalar_t__ DoNotReplicateId ;
 int ERRCODE_CONFIGURATION_LIMIT_EXCEEDED ;
 int ERRCODE_OBJECT_IN_USE ;
 int ERROR ;
 scalar_t__ InvalidRepOriginId ;
 scalar_t__ InvalidXLogRecPtr ;
 int LWLockAcquire (int *,int ) ;
 int LWLockRelease (int *) ;
 int LW_EXCLUSIVE ;
 int RM_REPLORIGIN_ID ;
 int * ReplicationOriginLock ;
 int XLOG_REPLORIGIN_SET ;
 int XLogBeginInsert () ;
 int XLogInsert (int ,int ) ;
 int XLogRegisterData (char*,int) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errhint (char*) ;
 int errmsg (char*,scalar_t__,...) ;
 int max_replication_slots ;
 TYPE_2__* replication_states ;

void
replorigin_advance(RepOriginId node,
       XLogRecPtr remote_commit, XLogRecPtr local_commit,
       bool go_backward, bool wal_log)
{
 int i;
 ReplicationState *replication_state = ((void*)0);
 ReplicationState *free_state = ((void*)0);

 Assert(node != InvalidRepOriginId);


 if (node == DoNotReplicateId)
  return;
 LWLockAcquire(ReplicationOriginLock, LW_EXCLUSIVE);





 for (i = 0; i < max_replication_slots; i++)
 {
  ReplicationState *curstate = &replication_states[i];


  if (curstate->roident == InvalidRepOriginId &&
   free_state == ((void*)0))
  {
   free_state = curstate;
   continue;
  }


  if (curstate->roident != node)
  {
   continue;
  }


  replication_state = curstate;

  LWLockAcquire(&replication_state->lock, LW_EXCLUSIVE);


  if (replication_state->acquired_by != 0)
  {
   ereport(ERROR,
     (errcode(ERRCODE_OBJECT_IN_USE),
      errmsg("replication origin with OID %d is already active for PID %d",
       replication_state->roident,
       replication_state->acquired_by)));
  }

  break;
 }

 if (replication_state == ((void*)0) && free_state == ((void*)0))
  ereport(ERROR,
    (errcode(ERRCODE_CONFIGURATION_LIMIT_EXCEEDED),
     errmsg("could not find free replication state slot for replication origin with OID %u",
      node),
     errhint("Increase max_replication_slots and try again.")));

 if (replication_state == ((void*)0))
 {

  LWLockAcquire(&free_state->lock, LW_EXCLUSIVE);
  replication_state = free_state;
  Assert(replication_state->remote_lsn == InvalidXLogRecPtr);
  Assert(replication_state->local_lsn == InvalidXLogRecPtr);
  replication_state->roident = node;
 }

 Assert(replication_state->roident != InvalidRepOriginId);






 if (wal_log)
 {
  xl_replorigin_set xlrec;

  xlrec.remote_lsn = remote_commit;
  xlrec.node_id = node;
  xlrec.force = go_backward;

  XLogBeginInsert();
  XLogRegisterData((char *) (&xlrec), sizeof(xlrec));

  XLogInsert(RM_REPLORIGIN_ID, XLOG_REPLORIGIN_SET);
 }






 if (go_backward || replication_state->remote_lsn < remote_commit)
  replication_state->remote_lsn = remote_commit;
 if (local_commit != InvalidXLogRecPtr &&
  (go_backward || replication_state->local_lsn < local_commit))
  replication_state->local_lsn = local_commit;
 LWLockRelease(&replication_state->lock);





 LWLockRelease(ReplicationOriginLock);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ XLogRecPtr ;
struct TYPE_3__ {scalar_t__ roident; scalar_t__ remote_lsn; scalar_t__ local_lsn; int lock; } ;
typedef TYPE_1__ ReplicationState ;
typedef scalar_t__ RepOriginId ;


 scalar_t__ InvalidXLogRecPtr ;
 int LWLockAcquire (int *,int ) ;
 int LWLockRelease (int *) ;
 int LW_SHARED ;
 int * ReplicationOriginLock ;
 int XLogFlush (scalar_t__) ;
 int max_replication_slots ;
 TYPE_1__* replication_states ;

XLogRecPtr
replorigin_get_progress(RepOriginId node, bool flush)
{
 int i;
 XLogRecPtr local_lsn = InvalidXLogRecPtr;
 XLogRecPtr remote_lsn = InvalidXLogRecPtr;


 LWLockAcquire(ReplicationOriginLock, LW_SHARED);

 for (i = 0; i < max_replication_slots; i++)
 {
  ReplicationState *state;

  state = &replication_states[i];

  if (state->roident == node)
  {
   LWLockAcquire(&state->lock, LW_SHARED);

   remote_lsn = state->remote_lsn;
   local_lsn = state->local_lsn;

   LWLockRelease(&state->lock);

   break;
  }
 }

 LWLockRelease(ReplicationOriginLock);

 if (flush && local_lsn != InvalidXLogRecPtr)
  XLogFlush(local_lsn);

 return remote_lsn;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ XLogRecPtr ;
struct TYPE_2__ {scalar_t__ roident; scalar_t__ local_lsn; scalar_t__ remote_lsn; int lock; } ;


 int Assert (int) ;
 scalar_t__ InvalidRepOriginId ;
 int LWLockAcquire (int *,int ) ;
 int LWLockRelease (int *) ;
 int LW_EXCLUSIVE ;
 TYPE_1__* session_replication_state ;

void
replorigin_session_advance(XLogRecPtr remote_commit, XLogRecPtr local_commit)
{
 Assert(session_replication_state != ((void*)0));
 Assert(session_replication_state->roident != InvalidRepOriginId);

 LWLockAcquire(&session_replication_state->lock, LW_EXCLUSIVE);
 if (session_replication_state->local_lsn < local_commit)
  session_replication_state->local_lsn = local_commit;
 if (session_replication_state->remote_lsn < remote_commit)
  session_replication_state->remote_lsn = remote_commit;
 LWLockRelease(&session_replication_state->lock);
}

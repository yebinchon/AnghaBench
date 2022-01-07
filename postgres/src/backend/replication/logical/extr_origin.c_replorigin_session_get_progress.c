
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ XLogRecPtr ;
struct TYPE_2__ {scalar_t__ remote_lsn; scalar_t__ local_lsn; int lock; } ;


 int Assert (int ) ;
 scalar_t__ InvalidXLogRecPtr ;
 int LWLockAcquire (int *,int ) ;
 int LWLockRelease (int *) ;
 int LW_SHARED ;
 int XLogFlush (scalar_t__) ;
 TYPE_1__* session_replication_state ;

XLogRecPtr
replorigin_session_get_progress(bool flush)
{
 XLogRecPtr remote_lsn;
 XLogRecPtr local_lsn;

 Assert(session_replication_state != ((void*)0));

 LWLockAcquire(&session_replication_state->lock, LW_SHARED);
 remote_lsn = session_replication_state->remote_lsn;
 local_lsn = session_replication_state->local_lsn;
 LWLockRelease(&session_replication_state->lock);

 if (flush && local_lsn != InvalidXLogRecPtr)
  XLogFlush(local_lsn);

 return remote_lsn;
}

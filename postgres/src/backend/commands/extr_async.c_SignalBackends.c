
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int32 ;
typedef int QueuePosition ;
typedef scalar_t__ BackendId ;


 int Assert (int) ;
 int AsyncQueueLock ;
 int DEBUG3 ;
 scalar_t__ InvalidPid ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 int MaxBackends ;
 scalar_t__ MyDatabaseId ;
 scalar_t__ MyProcPid ;
 int PROCSIG_NOTIFY_INTERRUPT ;
 scalar_t__ QUEUE_BACKEND_DBOID (scalar_t__) ;
 scalar_t__ QUEUE_BACKEND_PID (scalar_t__) ;
 int QUEUE_BACKEND_POS (scalar_t__) ;
 scalar_t__ QUEUE_CLEANUP_DELAY ;
 scalar_t__ QUEUE_FIRST_LISTENER ;
 int QUEUE_HEAD ;
 scalar_t__ QUEUE_NEXT_LISTENER (scalar_t__) ;
 scalar_t__ QUEUE_POS_EQUAL (int ,int ) ;
 int QUEUE_POS_PAGE (int ) ;
 scalar_t__ SendProcSignal (scalar_t__,int ,scalar_t__) ;
 scalar_t__ asyncQueuePageDiff (int ,int ) ;
 int elog (int ,char*,scalar_t__) ;
 scalar_t__ palloc (int) ;
 int pfree (scalar_t__*) ;

__attribute__((used)) static void
SignalBackends(void)
{
 int32 *pids;
 BackendId *ids;
 int count;
 pids = (int32 *) palloc(MaxBackends * sizeof(int32));
 ids = (BackendId *) palloc(MaxBackends * sizeof(BackendId));
 count = 0;

 LWLockAcquire(AsyncQueueLock, LW_EXCLUSIVE);
 for (BackendId i = QUEUE_FIRST_LISTENER; i > 0; i = QUEUE_NEXT_LISTENER(i))
 {
  int32 pid = QUEUE_BACKEND_PID(i);
  QueuePosition pos;

  Assert(pid != InvalidPid);
  if (pid == MyProcPid)
   continue;
  pos = QUEUE_BACKEND_POS(i);
  if (QUEUE_BACKEND_DBOID(i) == MyDatabaseId)
  {




   if (QUEUE_POS_EQUAL(pos, QUEUE_HEAD))
    continue;
  }
  else
  {




   if (asyncQueuePageDiff(QUEUE_POS_PAGE(QUEUE_HEAD),
           QUEUE_POS_PAGE(pos)) < QUEUE_CLEANUP_DELAY)
    continue;
  }

  pids[count] = pid;
  ids[count] = i;
  count++;
 }
 LWLockRelease(AsyncQueueLock);


 for (int i = 0; i < count; i++)
 {
  int32 pid = pids[i];







  if (SendProcSignal(pid, PROCSIG_NOTIFY_INTERRUPT, ids[i]) < 0)
   elog(DEBUG3, "could not signal backend with PID %d: %m", pid);
 }

 pfree(pids);
 pfree(ids);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int backendId; } ;
typedef TYPE_1__ VirtualTransactionId ;
typedef int TransactionId ;
struct TYPE_12__ {int pid; } ;
typedef TYPE_2__ PGPROC ;


 TYPE_2__* BackendIdGetProc (int ) ;
 TYPE_1__* GetCurrentVirtualXIDs (int ,int,int,int,int*) ;
 int PROC_IN_VACUUM ;
 int PROC_IS_AUTOVACUUM ;
 int PROGRESS_WAITFOR_CURRENT_PID ;
 int PROGRESS_WAITFOR_DONE ;
 int PROGRESS_WAITFOR_TOTAL ;
 int SetInvalidVirtualTransactionId (TYPE_1__) ;
 scalar_t__ VirtualTransactionIdEquals (TYPE_1__,TYPE_1__) ;
 scalar_t__ VirtualTransactionIdIsValid (TYPE_1__) ;
 int VirtualXactLock (TYPE_1__,int) ;
 int pfree (TYPE_1__*) ;
 int pgstat_progress_update_param (int ,int) ;

__attribute__((used)) static void
WaitForOlderSnapshots(TransactionId limitXmin, bool progress)
{
 int n_old_snapshots;
 int i;
 VirtualTransactionId *old_snapshots;

 old_snapshots = GetCurrentVirtualXIDs(limitXmin, 1, 0,
            PROC_IS_AUTOVACUUM | PROC_IN_VACUUM,
            &n_old_snapshots);
 if (progress)
  pgstat_progress_update_param(PROGRESS_WAITFOR_TOTAL, n_old_snapshots);

 for (i = 0; i < n_old_snapshots; i++)
 {
  if (!VirtualTransactionIdIsValid(old_snapshots[i]))
   continue;

  if (i > 0)
  {

   VirtualTransactionId *newer_snapshots;
   int n_newer_snapshots;
   int j;
   int k;

   newer_snapshots = GetCurrentVirtualXIDs(limitXmin,
             1, 0,
             PROC_IS_AUTOVACUUM | PROC_IN_VACUUM,
             &n_newer_snapshots);
   for (j = i; j < n_old_snapshots; j++)
   {
    if (!VirtualTransactionIdIsValid(old_snapshots[j]))
     continue;
    for (k = 0; k < n_newer_snapshots; k++)
    {
     if (VirtualTransactionIdEquals(old_snapshots[j],
               newer_snapshots[k]))
      break;
    }
    if (k >= n_newer_snapshots)
     SetInvalidVirtualTransactionId(old_snapshots[j]);
   }
   pfree(newer_snapshots);
  }

  if (VirtualTransactionIdIsValid(old_snapshots[i]))
  {

   if (progress)
   {
    PGPROC *holder = BackendIdGetProc(old_snapshots[i].backendId);

    if (holder)
     pgstat_progress_update_param(PROGRESS_WAITFOR_CURRENT_PID,
             holder->pid);
   }
   VirtualXactLock(old_snapshots[i], 1);
  }

  if (progress)
   pgstat_progress_update_param(PROGRESS_WAITFOR_DONE, i + 1);
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AtCCI_LocalCache () ;
 int ERRCODE_PROGRAM_LIMIT_EXCEEDED ;
 int ERROR ;
 scalar_t__ InvalidCommandId ;
 scalar_t__ IsInParallelMode () ;
 scalar_t__ IsParallelWorker () ;
 int SnapshotSetCommandId (scalar_t__) ;
 scalar_t__ currentCommandId ;
 int currentCommandIdUsed ;
 int elog (int ,char*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;

void
CommandCounterIncrement(void)
{






 if (currentCommandIdUsed)
 {





  if (IsInParallelMode() || IsParallelWorker())
   elog(ERROR, "cannot start commands during a parallel operation");

  currentCommandId += 1;
  if (currentCommandId == InvalidCommandId)
  {
   currentCommandId -= 1;
   ereport(ERROR,
     (errcode(ERRCODE_PROGRAM_LIMIT_EXCEEDED),
      errmsg("cannot have more than 2^32-2 commands in a transaction")));
  }
  currentCommandIdUsed = 0;


  SnapshotSetCommandId(currentCommandId);







  AtCCI_LocalCache();
 }
}

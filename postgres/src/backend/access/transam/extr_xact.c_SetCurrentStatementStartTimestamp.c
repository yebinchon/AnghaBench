
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Assert (int) ;
 scalar_t__ GetCurrentTimestamp () ;
 int IsParallelWorker () ;
 scalar_t__ stmtStartTimestamp ;

void
SetCurrentStatementStartTimestamp(void)
{
 if (!IsParallelWorker())
  stmtStartTimestamp = GetCurrentTimestamp();
 else
  Assert(stmtStartTimestamp != 0);
}

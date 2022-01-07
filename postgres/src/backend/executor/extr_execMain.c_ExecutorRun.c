
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64 ;
typedef int ScanDirection ;
typedef int QueryDesc ;


 int ExecutorRun_hook (int *,int ,int ,int) ;
 int standard_ExecutorRun (int *,int ,int ,int) ;
 int stub1 (int *,int ,int ,int) ;

void
ExecutorRun(QueryDesc *queryDesc,
   ScanDirection direction, uint64 count,
   bool execute_once)
{
 if (ExecutorRun_hook)
  (*ExecutorRun_hook) (queryDesc, direction, count, execute_once);
 else
  standard_ExecutorRun(queryDesc, direction, count, execute_once);
}

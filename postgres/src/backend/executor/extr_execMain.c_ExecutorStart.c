
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int QueryDesc ;


 int ExecutorStart_hook (int *,int) ;
 int standard_ExecutorStart (int *,int) ;
 int stub1 (int *,int) ;

void
ExecutorStart(QueryDesc *queryDesc, int eflags)
{
 if (ExecutorStart_hook)
  (*ExecutorStart_hook) (queryDesc, eflags);
 else
  standard_ExecutorStart(queryDesc, eflags);
}

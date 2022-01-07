
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int QueryDesc ;


 int ExecutorFinish_hook (int *) ;
 int standard_ExecutorFinish (int *) ;
 int stub1 (int *) ;

void
ExecutorFinish(QueryDesc *queryDesc)
{
 if (ExecutorFinish_hook)
  (*ExecutorFinish_hook) (queryDesc);
 else
  standard_ExecutorFinish(queryDesc);
}

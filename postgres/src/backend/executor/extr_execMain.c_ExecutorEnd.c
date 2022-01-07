
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int QueryDesc ;


 int ExecutorEnd_hook (int *) ;
 int standard_ExecutorEnd (int *) ;
 int stub1 (int *) ;

void
ExecutorEnd(QueryDesc *queryDesc)
{
 if (ExecutorEnd_hook)
  (*ExecutorEnd_hook) (queryDesc);
 else
  standard_ExecutorEnd(queryDesc);
}

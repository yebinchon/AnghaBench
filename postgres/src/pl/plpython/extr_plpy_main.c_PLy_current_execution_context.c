
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PLyExecutionContext ;


 int ERROR ;
 int * PLy_execution_contexts ;
 int elog (int ,char*) ;

PLyExecutionContext *
PLy_current_execution_context(void)
{
 if (PLy_execution_contexts == ((void*)0))
  elog(ERROR, "no Python function is currently executing");

 return PLy_execution_contexts;
}

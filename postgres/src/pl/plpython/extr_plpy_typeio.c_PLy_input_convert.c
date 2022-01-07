
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * (* func ) (TYPE_1__*,int ) ;} ;
typedef int PyObject ;
typedef int PLyExecutionContext ;
typedef TYPE_1__ PLyDatumToOb ;
typedef int MemoryContext ;
typedef int Datum ;


 int MemoryContextReset (int ) ;
 int MemoryContextSwitchTo (int ) ;
 int * PLy_current_execution_context () ;
 int PLy_get_scratch_context (int *) ;
 int * stub1 (TYPE_1__*,int ) ;

PyObject *
PLy_input_convert(PLyDatumToOb *arg, Datum val)
{
 PyObject *result;
 PLyExecutionContext *exec_ctx = PLy_current_execution_context();
 MemoryContext scratch_context = PLy_get_scratch_context(exec_ctx);
 MemoryContext oldcontext;
 MemoryContextReset(scratch_context);

 oldcontext = MemoryContextSwitchTo(scratch_context);

 result = arg->func(arg, val);

 MemoryContextSwitchTo(oldcontext);

 return result;
}

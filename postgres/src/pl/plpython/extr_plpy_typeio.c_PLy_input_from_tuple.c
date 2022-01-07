
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TupleDesc ;
typedef int PyObject ;
typedef int PLyExecutionContext ;
typedef int PLyDatumToOb ;
typedef int MemoryContext ;
typedef int HeapTuple ;


 int MemoryContextReset (int ) ;
 int MemoryContextSwitchTo (int ) ;
 int * PLyDict_FromTuple (int *,int ,int ,int) ;
 int * PLy_current_execution_context () ;
 int PLy_get_scratch_context (int *) ;

PyObject *
PLy_input_from_tuple(PLyDatumToOb *arg, HeapTuple tuple, TupleDesc desc, bool include_generated)
{
 PyObject *dict;
 PLyExecutionContext *exec_ctx = PLy_current_execution_context();
 MemoryContext scratch_context = PLy_get_scratch_context(exec_ctx);
 MemoryContext oldcontext;




 MemoryContextReset(scratch_context);

 oldcontext = MemoryContextSwitchTo(scratch_context);

 dict = PLyDict_FromTuple(arg, tuple, desc, include_generated);

 MemoryContextSwitchTo(oldcontext);

 return dict;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int globals; int * code; } ;
typedef int PyObject ;
typedef int PyCodeObject ;
typedef TYPE_1__ PLyProcedure ;


 int Assert (int) ;
 int ERROR ;
 int PG_END_TRY () ;
 int PG_FINALLY () ;
 int PG_TRY () ;
 int PLy_abort_open_subtransactions (int volatile) ;
 int PLy_elog (int ,int *) ;
 int PyDict_SetItemString (int ,char const*,int *) ;
 int * PyEval_EvalCode (int *,int ,int ) ;
 int explicit_subtransactions ;
 int volatile list_length (int ) ;

__attribute__((used)) static PyObject *
PLy_procedure_call(PLyProcedure *proc, const char *kargs, PyObject *vargs)
{
 PyObject *rv = ((void*)0);
 int volatile save_subxact_level = list_length(explicit_subtransactions);

 PyDict_SetItemString(proc->globals, kargs, vargs);

 PG_TRY();
 {




  rv = PyEval_EvalCode((PyCodeObject *) proc->code,
        proc->globals, proc->globals);







  Assert(list_length(explicit_subtransactions) >= save_subxact_level);
 }
 PG_FINALLY();
 {
  PLy_abort_open_subtransactions(save_subxact_level);
 }
 PG_END_TRY();


 if (rv == ((void*)0))
  PLy_elog(ERROR, ((void*)0));

 return rv;
}

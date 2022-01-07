
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int oldowner; int oldcontext; } ;
struct TYPE_4__ {int exited; int started; } ;
typedef int PyObject ;
typedef TYPE_1__ PLySubtransactionObject ;
typedef TYPE_2__ PLySubtransactionData ;


 int CurrentResourceOwner ;
 int MemoryContextSwitchTo (int ) ;
 scalar_t__ NIL ;
 int PLy_exception_set (int ,char*) ;
 int PyArg_ParseTuple (int *,char*,int **,int **,int **) ;
 int PyExc_ValueError ;
 int * Py_None ;
 int Py_RETURN_NONE ;
 int ReleaseCurrentSubTransaction () ;
 int RollbackAndReleaseCurrentSubTransaction () ;
 scalar_t__ explicit_subtransactions ;
 scalar_t__ linitial (scalar_t__) ;
 scalar_t__ list_delete_first (scalar_t__) ;
 int pfree (TYPE_2__*) ;

__attribute__((used)) static PyObject *
PLy_subtransaction_exit(PyObject *self, PyObject *args)
{
 PyObject *type;
 PyObject *value;
 PyObject *traceback;
 PLySubtransactionData *subxactdata;
 PLySubtransactionObject *subxact = (PLySubtransactionObject *) self;

 if (!PyArg_ParseTuple(args, "OOO", &type, &value, &traceback))
  return ((void*)0);

 if (!subxact->started)
 {
  PLy_exception_set(PyExc_ValueError, "this subtransaction has not been entered");
  return ((void*)0);
 }

 if (subxact->exited)
 {
  PLy_exception_set(PyExc_ValueError, "this subtransaction has already been exited");
  return ((void*)0);
 }

 if (explicit_subtransactions == NIL)
 {
  PLy_exception_set(PyExc_ValueError, "there is no subtransaction to exit from");
  return ((void*)0);
 }

 subxact->exited = 1;

 if (type != Py_None)
 {

  RollbackAndReleaseCurrentSubTransaction();
 }
 else
 {
  ReleaseCurrentSubTransaction();
 }

 subxactdata = (PLySubtransactionData *) linitial(explicit_subtransactions);
 explicit_subtransactions = list_delete_first(explicit_subtransactions);

 MemoryContextSwitchTo(subxactdata->oldcontext);
 CurrentResourceOwner = subxactdata->oldowner;
 pfree(subxactdata);

 Py_RETURN_NONE;
}

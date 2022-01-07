
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef scalar_t__ uint64 ;
struct TYPE_15__ {int tupdesc; int * vals; } ;
struct TYPE_14__ {int result; int portalname; scalar_t__ closed; } ;
struct TYPE_13__ {int curr_proc; } ;
struct TYPE_12__ {struct TYPE_12__* rows; struct TYPE_12__* nrows; struct TYPE_12__* status; } ;
typedef int ResourceOwner ;
typedef int PyObject ;
typedef int Portal ;
typedef TYPE_1__ PLyResultObject ;
typedef TYPE_2__ PLyExecutionContext ;
typedef TYPE_3__ PLyCursorObject ;
typedef int MemoryContext ;


 int CurrentMemoryContext ;
 int CurrentResourceOwner ;
 int ERRCODE_PROGRAM_LIMIT_EXCEEDED ;
 int ERROR ;
 int GetPortalByName (int ) ;
 int PG_CATCH () ;
 int PG_END_TRY () ;
 int PG_TRY () ;
 TYPE_2__* PLy_current_execution_context () ;
 int PLy_exception_set (int ,char*) ;
 int * PLy_input_from_tuple (int *,int ,int ,int) ;
 int PLy_input_setup_tuple (int *,int ,int ) ;
 scalar_t__ PLy_result_new () ;
 int PLy_spi_subtransaction_abort (int volatile,int volatile) ;
 int PLy_spi_subtransaction_begin (int volatile,int volatile) ;
 int PLy_spi_subtransaction_commit (int volatile,int volatile) ;
 scalar_t__ PY_SSIZE_T_MAX ;
 int PortalIsValid (int ) ;
 int PyArg_ParseTuple (int *,char*,int*) ;
 int PyExc_ValueError ;
 TYPE_1__* PyInt_FromLong (int ) ;
 TYPE_1__* PyList_New (scalar_t__) ;
 int PyList_SetItem (TYPE_1__*,scalar_t__,int *) ;
 TYPE_1__* PyLong_FromUnsignedLongLong (scalar_t__) ;
 int Py_DECREF (TYPE_1__*) ;
 int SPI_OK_FETCH ;
 int SPI_cursor_fetch (int ,int,int) ;
 int SPI_freetuptable (TYPE_4__*) ;
 scalar_t__ SPI_processed ;
 TYPE_4__* SPI_tuptable ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;

__attribute__((used)) static PyObject *
PLy_cursor_fetch(PyObject *self, PyObject *args)
{
 PLyCursorObject *cursor;
 int count;
 PLyResultObject *ret;
 PLyExecutionContext *exec_ctx = PLy_current_execution_context();
 volatile MemoryContext oldcontext;
 volatile ResourceOwner oldowner;
 Portal portal;

 if (!PyArg_ParseTuple(args, "i:fetch", &count))
  return ((void*)0);

 cursor = (PLyCursorObject *) self;

 if (cursor->closed)
 {
  PLy_exception_set(PyExc_ValueError, "fetch from a closed cursor");
  return ((void*)0);
 }

 portal = GetPortalByName(cursor->portalname);
 if (!PortalIsValid(portal))
 {
  PLy_exception_set(PyExc_ValueError,
        "iterating a cursor in an aborted subtransaction");
  return ((void*)0);
 }

 ret = (PLyResultObject *) PLy_result_new();
 if (ret == ((void*)0))
  return ((void*)0);

 oldcontext = CurrentMemoryContext;
 oldowner = CurrentResourceOwner;

 PLy_spi_subtransaction_begin(oldcontext, oldowner);

 PG_TRY();
 {
  SPI_cursor_fetch(portal, 1, count);

  Py_DECREF(ret->status);
  ret->status = PyInt_FromLong(SPI_OK_FETCH);

  Py_DECREF(ret->nrows);
  ret->nrows = PyLong_FromUnsignedLongLong(SPI_processed);

  if (SPI_processed != 0)
  {
   uint64 i;






   if (SPI_processed > (uint64) PY_SSIZE_T_MAX)
    ereport(ERROR,
      (errcode(ERRCODE_PROGRAM_LIMIT_EXCEEDED),
       errmsg("query result has too many rows to fit in a Python list")));

   Py_DECREF(ret->rows);
   ret->rows = PyList_New(SPI_processed);
   if (!ret->rows)
   {
    Py_DECREF(ret);
    ret = ((void*)0);
   }
   else
   {
    PLy_input_setup_tuple(&cursor->result, SPI_tuptable->tupdesc,
           exec_ctx->curr_proc);

    for (i = 0; i < SPI_processed; i++)
    {
     PyObject *row = PLy_input_from_tuple(&cursor->result,
                 SPI_tuptable->vals[i],
                 SPI_tuptable->tupdesc,
                 1);

     PyList_SetItem(ret->rows, i, row);
    }
   }
  }

  SPI_freetuptable(SPI_tuptable);

  PLy_spi_subtransaction_commit(oldcontext, oldowner);
 }
 PG_CATCH();
 {
  PLy_spi_subtransaction_abort(oldcontext, oldowner);
  return ((void*)0);
 }
 PG_END_TRY();

 return (PyObject *) ret;
}

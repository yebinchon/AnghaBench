
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ uint64 ;
struct TYPE_13__ {int curr_proc; } ;
struct TYPE_12__ {struct TYPE_12__* rows; int tupdesc; struct TYPE_12__* nrows; struct TYPE_12__* status; } ;
struct TYPE_11__ {int tupdesc; int * vals; } ;
typedef TYPE_1__ SPITupleTable ;
typedef int PyObject ;
typedef TYPE_2__ PLyResultObject ;
typedef TYPE_3__ PLyExecutionContext ;
typedef int PLyDatumToOb ;
typedef int volatile MemoryContext ;


 int ALLOCSET_DEFAULT_SIZES ;
 int volatile AllocSetContextCreate (int volatile,char*,int ) ;
 int CreateTupleDescCopy (int ) ;
 int volatile CurrentMemoryContext ;
 int ERRCODE_PROGRAM_LIMIT_EXCEEDED ;
 int ERROR ;
 int MemoryContextDelete (int volatile) ;
 int volatile MemoryContextSwitchTo (int volatile) ;
 int PG_CATCH () ;
 int PG_END_TRY () ;
 int PG_RE_THROW () ;
 int PG_TRY () ;
 TYPE_3__* PLy_current_execution_context () ;
 int * PLy_input_from_tuple (int *,int ,int ,int) ;
 int PLy_input_setup_func (int *,int volatile,int ,int,int ) ;
 int PLy_input_setup_tuple (int *,int ,int ) ;
 scalar_t__ PLy_result_new () ;
 scalar_t__ PY_SSIZE_T_MAX ;
 TYPE_2__* PyInt_FromLong (int) ;
 TYPE_2__* PyList_New (scalar_t__) ;
 int PyList_SetItem (TYPE_2__*,scalar_t__,int *) ;
 void* PyLong_FromUnsignedLongLong (scalar_t__) ;
 int Py_DECREF (TYPE_2__*) ;
 int RECORDOID ;
 int SPI_freetuptable (TYPE_1__*) ;
 int volatile TopMemoryContext ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;

__attribute__((used)) static PyObject *
PLy_spi_execute_fetch_result(SPITupleTable *tuptable, uint64 rows, int status)
{
 PLyResultObject *result;
 PLyExecutionContext *exec_ctx = PLy_current_execution_context();
 volatile MemoryContext oldcontext;

 result = (PLyResultObject *) PLy_result_new();
 if (!result)
 {
  SPI_freetuptable(tuptable);
  return ((void*)0);
 }
 Py_DECREF(result->status);
 result->status = PyInt_FromLong(status);

 if (status > 0 && tuptable == ((void*)0))
 {
  Py_DECREF(result->nrows);
  result->nrows = PyLong_FromUnsignedLongLong(rows);
 }
 else if (status > 0 && tuptable != ((void*)0))
 {
  PLyDatumToOb ininfo;
  MemoryContext cxt;

  Py_DECREF(result->nrows);
  result->nrows = PyLong_FromUnsignedLongLong(rows);

  cxt = AllocSetContextCreate(CurrentMemoryContext,
         "PL/Python temp context",
         ALLOCSET_DEFAULT_SIZES);


  PLy_input_setup_func(&ininfo, cxt, RECORDOID, -1,
        exec_ctx->curr_proc);

  oldcontext = CurrentMemoryContext;
  PG_TRY();
  {
   MemoryContext oldcontext2;

   if (rows)
   {
    uint64 i;






    if (rows > (uint64) PY_SSIZE_T_MAX)
     ereport(ERROR,
       (errcode(ERRCODE_PROGRAM_LIMIT_EXCEEDED),
        errmsg("query result has too many rows to fit in a Python list")));

    Py_DECREF(result->rows);
    result->rows = PyList_New(rows);
    if (result->rows)
    {
     PLy_input_setup_tuple(&ininfo, tuptable->tupdesc,
            exec_ctx->curr_proc);

     for (i = 0; i < rows; i++)
     {
      PyObject *row = PLy_input_from_tuple(&ininfo,
                  tuptable->vals[i],
                  tuptable->tupdesc,
                  1);

      PyList_SetItem(result->rows, i, row);
     }
    }
   }
   oldcontext2 = MemoryContextSwitchTo(TopMemoryContext);
   result->tupdesc = CreateTupleDescCopy(tuptable->tupdesc);
   MemoryContextSwitchTo(oldcontext2);
  }
  PG_CATCH();
  {
   MemoryContextSwitchTo(oldcontext);
   MemoryContextDelete(cxt);
   Py_DECREF(result);
   PG_RE_THROW();
  }
  PG_END_TRY();

  MemoryContextDelete(cxt);
  SPI_freetuptable(tuptable);


  if (!result->rows)
  {
   Py_DECREF(result);
   result = ((void*)0);
  }
 }

 return (PyObject *) result;
}

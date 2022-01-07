
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int tupdesc; int * vals; } ;
struct TYPE_7__ {int result; int portalname; scalar_t__ closed; } ;
struct TYPE_6__ {int curr_proc; } ;
typedef int ResourceOwner ;
typedef int PyObject ;
typedef int Portal ;
typedef TYPE_1__ PLyExecutionContext ;
typedef TYPE_2__ PLyCursorObject ;
typedef int MemoryContext ;


 int CurrentMemoryContext ;
 int CurrentResourceOwner ;
 int GetPortalByName (int ) ;
 int PG_CATCH () ;
 int PG_END_TRY () ;
 int PG_TRY () ;
 TYPE_1__* PLy_current_execution_context () ;
 int PLy_exception_set (int ,char*) ;
 int * PLy_input_from_tuple (int *,int ,int ,int) ;
 int PLy_input_setup_tuple (int *,int ,int ) ;
 int PLy_spi_subtransaction_abort (int volatile,int volatile) ;
 int PLy_spi_subtransaction_begin (int volatile,int volatile) ;
 int PLy_spi_subtransaction_commit (int volatile,int volatile) ;
 int PortalIsValid (int ) ;
 int PyErr_SetNone (int ) ;
 int PyExc_StopIteration ;
 int PyExc_ValueError ;
 int SPI_cursor_fetch (int ,int,int) ;
 int SPI_freetuptable (TYPE_3__*) ;
 scalar_t__ SPI_processed ;
 TYPE_3__* SPI_tuptable ;

__attribute__((used)) static PyObject *
PLy_cursor_iternext(PyObject *self)
{
 PLyCursorObject *cursor;
 PyObject *ret;
 PLyExecutionContext *exec_ctx = PLy_current_execution_context();
 volatile MemoryContext oldcontext;
 volatile ResourceOwner oldowner;
 Portal portal;

 cursor = (PLyCursorObject *) self;

 if (cursor->closed)
 {
  PLy_exception_set(PyExc_ValueError, "iterating a closed cursor");
  return ((void*)0);
 }

 portal = GetPortalByName(cursor->portalname);
 if (!PortalIsValid(portal))
 {
  PLy_exception_set(PyExc_ValueError,
        "iterating a cursor in an aborted subtransaction");
  return ((void*)0);
 }

 oldcontext = CurrentMemoryContext;
 oldowner = CurrentResourceOwner;

 PLy_spi_subtransaction_begin(oldcontext, oldowner);

 PG_TRY();
 {
  SPI_cursor_fetch(portal, 1, 1);
  if (SPI_processed == 0)
  {
   PyErr_SetNone(PyExc_StopIteration);
   ret = ((void*)0);
  }
  else
  {
   PLy_input_setup_tuple(&cursor->result, SPI_tuptable->tupdesc,
          exec_ctx->curr_proc);

   ret = PLy_input_from_tuple(&cursor->result, SPI_tuptable->vals[0],
            SPI_tuptable->tupdesc, 1);
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

 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* curr_proc; } ;
struct TYPE_4__ {int fn_readonly; } ;
typedef int ResourceOwner ;
typedef int PyObject ;
typedef TYPE_2__ PLyExecutionContext ;
typedef int MemoryContext ;


 int CurrentMemoryContext ;
 int CurrentResourceOwner ;
 int PG_CATCH () ;
 int PG_END_TRY () ;
 int PG_TRY () ;
 TYPE_2__* PLy_current_execution_context () ;
 int PLy_exc_spi_error ;
 int PLy_exception_set (int ,char*,int ) ;
 int * PLy_spi_execute_fetch_result (int ,int ,int) ;
 int PLy_spi_subtransaction_abort (int volatile,int volatile) ;
 int PLy_spi_subtransaction_begin (int volatile,int volatile) ;
 int PLy_spi_subtransaction_commit (int volatile,int volatile) ;
 int Py_XDECREF (int *) ;
 int SPI_execute (char*,int ,long) ;
 int SPI_processed ;
 int SPI_result_code_string (int) ;
 int SPI_tuptable ;
 int pg_verifymbstr (char*,int ,int) ;
 int strlen (char*) ;

__attribute__((used)) static PyObject *
PLy_spi_execute_query(char *query, long limit)
{
 int rv;
 volatile MemoryContext oldcontext;
 volatile ResourceOwner oldowner;
 PyObject *ret = ((void*)0);

 oldcontext = CurrentMemoryContext;
 oldowner = CurrentResourceOwner;

 PLy_spi_subtransaction_begin(oldcontext, oldowner);

 PG_TRY();
 {
  PLyExecutionContext *exec_ctx = PLy_current_execution_context();

  pg_verifymbstr(query, strlen(query), 0);
  rv = SPI_execute(query, exec_ctx->curr_proc->fn_readonly, limit);
  ret = PLy_spi_execute_fetch_result(SPI_tuptable, SPI_processed, rv);

  PLy_spi_subtransaction_commit(oldcontext, oldowner);
 }
 PG_CATCH();
 {
  PLy_spi_subtransaction_abort(oldcontext, oldowner);
  return ((void*)0);
 }
 PG_END_TRY();

 if (rv < 0)
 {
  Py_XDECREF(ret);
  PLy_exception_set(PLy_exc_spi_error,
        "SPI_execute failed: %s",
        SPI_result_code_string(rv));
  return ((void*)0);
 }

 return ret;
}

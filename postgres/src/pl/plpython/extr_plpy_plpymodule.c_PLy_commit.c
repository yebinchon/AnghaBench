
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * scratch_ctx; } ;
typedef int PyObject ;
typedef TYPE_1__ PLyExecutionContext ;


 TYPE_1__* PLy_current_execution_context () ;
 int Py_RETURN_NONE ;
 int SPI_commit () ;
 int SPI_start_transaction () ;

__attribute__((used)) static PyObject *
PLy_commit(PyObject *self, PyObject *args)
{
 PLyExecutionContext *exec_ctx = PLy_current_execution_context();

 SPI_commit();
 SPI_start_transaction();


 exec_ctx->scratch_ctx = ((void*)0);

 Py_RETURN_NONE;
}

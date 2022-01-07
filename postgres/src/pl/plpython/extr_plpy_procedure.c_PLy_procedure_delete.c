
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mcxt; int globals; int statics; int code; } ;
typedef TYPE_1__ PLyProcedure ;


 int MemoryContextDelete (int ) ;
 int Py_XDECREF (int ) ;

void
PLy_procedure_delete(PLyProcedure *proc)
{
 Py_XDECREF(proc->code);
 Py_XDECREF(proc->statics);
 Py_XDECREF(proc->globals);
 MemoryContextDelete(proc->mcxt);
}

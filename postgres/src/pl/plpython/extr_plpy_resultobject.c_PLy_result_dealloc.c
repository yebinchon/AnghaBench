
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int * tupdesc; int status; int rows; int nrows; } ;
struct TYPE_7__ {TYPE_1__* ob_type; } ;
struct TYPE_6__ {int (* tp_free ) (TYPE_2__*) ;} ;
typedef TYPE_2__ PyObject ;
typedef TYPE_3__ PLyResultObject ;


 int FreeTupleDesc (int *) ;
 int Py_XDECREF (int ) ;
 int stub1 (TYPE_2__*) ;

__attribute__((used)) static void
PLy_result_dealloc(PyObject *arg)
{
 PLyResultObject *ob = (PLyResultObject *) arg;

 Py_XDECREF(ob->nrows);
 Py_XDECREF(ob->rows);
 Py_XDECREF(ob->status);
 if (ob->tupdesc)
 {
  FreeTupleDesc(ob->tupdesc);
  ob->tupdesc = ((void*)0);
 }

 arg->ob_type->tp_free(arg);
}

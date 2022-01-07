
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * nrows; } ;
typedef int PyObject ;
typedef TYPE_1__ PLyResultObject ;


 int Py_INCREF (int *) ;

__attribute__((used)) static PyObject *
PLy_result_nrows(PyObject *self, PyObject *args)
{
 PLyResultObject *ob = (PLyResultObject *) self;

 Py_INCREF(ob->nrows);
 return ob->nrows;
}

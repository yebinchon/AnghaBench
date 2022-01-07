
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rows; } ;
typedef int Py_ssize_t ;
typedef int PyObject ;
typedef TYPE_1__ PLyResultObject ;


 int * PyList_GetItem (int ,int ) ;
 int Py_INCREF (int *) ;

__attribute__((used)) static PyObject *
PLy_result_item(PyObject *arg, Py_ssize_t idx)
{
 PyObject *rv;
 PLyResultObject *ob = (PLyResultObject *) arg;

 rv = PyList_GetItem(ob->rows, idx);
 if (rv != ((void*)0))
  Py_INCREF(rv);
 return rv;
}

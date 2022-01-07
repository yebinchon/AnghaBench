
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;


 scalar_t__ PyArg_ParseTuple (int *,char*) ;
 int Py_INCREF (int *) ;
 int * Py_True ;

__attribute__((used)) static PyObject *
PLy_plan_status(PyObject *self, PyObject *args)
{
 if (PyArg_ParseTuple(args, ":status"))
 {
  Py_INCREF(Py_True);
  return Py_True;

 }
 return ((void*)0);
}

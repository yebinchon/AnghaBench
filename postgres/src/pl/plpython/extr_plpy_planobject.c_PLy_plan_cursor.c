
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;


 int * PLy_cursor_plan (int *,int *) ;
 int PyArg_ParseTuple (int *,char*,int **) ;

__attribute__((used)) static PyObject *
PLy_plan_cursor(PyObject *self, PyObject *args)
{
 PyObject *planargs = ((void*)0);

 if (!PyArg_ParseTuple(args, "|O", &planargs))
  return ((void*)0);

 return PLy_cursor_plan(self, planargs);
}

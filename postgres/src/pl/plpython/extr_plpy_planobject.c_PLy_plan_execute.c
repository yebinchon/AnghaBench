
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;


 int * PLy_spi_execute_plan (int *,int *,long) ;
 int PyArg_ParseTuple (int *,char*,int **,long*) ;

__attribute__((used)) static PyObject *
PLy_plan_execute(PyObject *self, PyObject *args)
{
 PyObject *list = ((void*)0);
 long limit = 0;

 if (!PyArg_ParseTuple(args, "|Ol", &list, &limit))
  return ((void*)0);

 return PLy_spi_execute_plan(self, list, limit);
}

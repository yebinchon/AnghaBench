
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;


 int PLy_exc_error ;
 int PLy_exception_set (int ,char*) ;
 int * PLy_spi_execute_plan (int *,int *,long) ;
 int * PLy_spi_execute_query (char*,long) ;
 scalar_t__ PyArg_ParseTuple (int *,char*,char**,long*,...) ;
 int PyErr_Clear () ;
 scalar_t__ is_PLyPlanObject (int *) ;

PyObject *
PLy_spi_execute(PyObject *self, PyObject *args)
{
 char *query;
 PyObject *plan;
 PyObject *list = ((void*)0);
 long limit = 0;

 if (PyArg_ParseTuple(args, "s|l", &query, &limit))
  return PLy_spi_execute_query(query, limit);

 PyErr_Clear();

 if (PyArg_ParseTuple(args, "O|Ol", &plan, &list, &limit) &&
  is_PLyPlanObject(plan))
  return PLy_spi_execute_plan(plan, list, limit);

 PLy_exception_set(PLy_exc_error, "plpy.execute expected a query or a plan");
 return ((void*)0);
}

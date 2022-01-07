
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;


 int * PLy_cursor_plan (int *,int *) ;
 int * PLy_cursor_query (char*) ;
 int PLy_exc_error ;
 int PLy_exception_set (int ,char*) ;
 scalar_t__ PyArg_ParseTuple (int *,char*,char**,...) ;
 int PyErr_Clear () ;

PyObject *
PLy_cursor(PyObject *self, PyObject *args)
{
 char *query;
 PyObject *plan;
 PyObject *planargs = ((void*)0);

 if (PyArg_ParseTuple(args, "s", &query))
  return PLy_cursor_query(query);

 PyErr_Clear();

 if (PyArg_ParseTuple(args, "O|O", &plan, &planargs))
  return PLy_cursor_plan(plan, planargs);

 PLy_exception_set(PLy_exc_error, "plpy.cursor expected a query or a plan");
 return ((void*)0);
}

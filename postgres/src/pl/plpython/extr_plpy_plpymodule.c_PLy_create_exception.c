
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;


 int ERROR ;
 int PLy_elog (int ,int *) ;
 int * PyErr_NewException (char*,int *,int *) ;
 int PyModule_AddObject (int *,char const*,int *) ;
 int Py_INCREF (int *) ;

__attribute__((used)) static PyObject *
PLy_create_exception(char *name, PyObject *base, PyObject *dict,
      const char *modname, PyObject *mod)
{
 PyObject *exc;

 exc = PyErr_NewException(name, base, dict);
 if (exc == ((void*)0))
  PLy_elog(ERROR, ((void*)0));





 Py_INCREF(exc);
 PyModule_AddObject(mod, modname, exc);






 Py_INCREF(exc);
 return exc;
}

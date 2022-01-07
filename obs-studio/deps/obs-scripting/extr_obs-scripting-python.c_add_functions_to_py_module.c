
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * ml_name; } ;
typedef int PyObject ;
typedef TYPE_1__ PyMethodDef ;


 int * PyCFunction_NewEx (TYPE_1__*,int *,int *) ;
 int PyDict_SetItemString (int *,int *,int *) ;
 int * PyModule_GetDict (int *) ;
 int * PyModule_GetNameObject (int *) ;
 int Py_DECREF (int *) ;

void add_functions_to_py_module(PyObject *module, PyMethodDef *method_list)
{
 PyObject *dict = PyModule_GetDict(module);
 PyObject *name = PyModule_GetNameObject(module);
 if (!dict || !name) {
  return;
 }
 for (PyMethodDef *ml = method_list; ml->ml_name != ((void*)0); ml++) {
  PyObject *func = PyCFunction_NewEx(ml, module, name);
  if (!func) {
   continue;
  }
  PyDict_SetItemString(dict, ml->ml_name, func);
  Py_DECREF(func);
 }
 Py_DECREF(name);
}

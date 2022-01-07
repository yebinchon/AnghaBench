
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;


 int * PyDict_GetItemString (int ,char*) ;
 int PyModule_GetDict (int *) ;
 int UNUSED_PARAMETER (int *) ;

__attribute__((used)) static PyObject *py_get_current_script_path(PyObject *self, PyObject *args)
{
 UNUSED_PARAMETER(args);
 return PyDict_GetItemString(PyModule_GetDict(self), "__script_dir__");
}

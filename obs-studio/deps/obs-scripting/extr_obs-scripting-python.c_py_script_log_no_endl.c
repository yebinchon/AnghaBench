
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;


 int * py_script_log_internal (int *,int *,int) ;

__attribute__((used)) static PyObject *py_script_log_no_endl(PyObject *self, PyObject *args)
{
 return py_script_log_internal(self, args, 0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;
typedef int OutputObject ;


 int Py_INCREF (int *) ;
 int * Py_None ;
 scalar_t__ write_output (int *,int *) ;

__attribute__((used)) static PyObject *
OutputWrite(OutputObject *self, PyObject *string)
{
    if (write_output(self, string))
 return ((void*)0);

    Py_INCREF(Py_None);
    return Py_None;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int npy_intp ;
typedef int PyObject ;


 int PyArray_PyIntAsIntp (int *) ;
 int PyErr_Clear () ;
 scalar_t__ PyErr_Occurred () ;

__attribute__((used)) static int
coerce_index(PyObject *o, npy_intp *v)
{
    *v = PyArray_PyIntAsIntp(o);

    if ((*v) == -1 && PyErr_Occurred()) {
        PyErr_Clear();
        return 0;
    }
    return 1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;
typedef int PyArrayObject ;


 int NPY_FORWARD_NDARRAY_METHOD (char*) ;

__attribute__((used)) static PyObject *
array_any(PyArrayObject *self, PyObject *args, PyObject *kwds)
{
    NPY_FORWARD_NDARRAY_METHOD("_any");
}

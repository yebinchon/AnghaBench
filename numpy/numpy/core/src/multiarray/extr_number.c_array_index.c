
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;
typedef int PyArrayObject ;


 int PyArray_DATA (int *) ;
 int * PyArray_GETITEM (int *,int ) ;
 int PyArray_ISINTEGER (int *) ;
 scalar_t__ PyArray_NDIM (int *) ;
 int PyErr_SetString (int ,char*) ;
 int PyExc_TypeError ;

__attribute__((used)) static PyObject *
array_index(PyArrayObject *v)
{
    if (!PyArray_ISINTEGER(v) || PyArray_NDIM(v) != 0) {
        PyErr_SetString(PyExc_TypeError,
            "only integer scalar arrays can be converted to a scalar index");
        return ((void*)0);
    }
    return PyArray_GETITEM(v, PyArray_DATA(v));
}

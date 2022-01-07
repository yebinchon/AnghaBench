
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int npy_bool ;
typedef int PyObject ;
typedef int PyArrayObject ;


 int NPY_MAXDIMS ;
 scalar_t__ NPY_SUCCEED ;
 int PyArg_ParseTupleAndKeywords (int *,int *,char*,char**,int **) ;
 scalar_t__ PyArray_ConvertMultiAxis (int *,int ,int *) ;
 int PyArray_NDIM (int *) ;
 int * PyArray_Squeeze (int *) ;
 int * PyArray_SqueezeSelected (int *,int *) ;
 int * Py_None ;

__attribute__((used)) static PyObject *
array_squeeze(PyArrayObject *self, PyObject *args, PyObject *kwds)
{
    PyObject *axis_in = ((void*)0);
    npy_bool axis_flags[NPY_MAXDIMS];

    static char *kwlist[] = {"axis", ((void*)0)};
    if (!PyArg_ParseTupleAndKeywords(args, kwds, "|O:squeeze", kwlist,
                                     &axis_in)) {
        return ((void*)0);
    }

    if (axis_in == ((void*)0) || axis_in == Py_None) {
        return PyArray_Squeeze(self);
    }
    else {
        if (PyArray_ConvertMultiAxis(axis_in, PyArray_NDIM(self),
                                            axis_flags) != NPY_SUCCEED) {
            return ((void*)0);
        }

        return PyArray_SqueezeSelected(self, axis_flags);
    }
}

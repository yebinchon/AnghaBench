
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int npy_intp ;
typedef int PyObject ;
typedef int PyArrayObject ;


 int NPY_MAXDIMS ;
 scalar_t__ PyArray_FailUnlessWriteable (int *,char*) ;
 scalar_t__ PyArray_MultiIndexSetItem (int *,int*,int *) ;
 int PyArray_NDIM (int *) ;
 int PyArray_PyIntAsIntp (int *) ;
 int* PyArray_SHAPE (int *) ;
 int PyArray_SIZE (int *) ;
 int PyErr_SetString (int ,char*) ;
 int PyExc_ValueError ;
 scalar_t__ PyTuple_Check (int *) ;
 int * PyTuple_GET_ITEM (int *,int) ;
 int PyTuple_GET_SIZE (int *) ;
 int Py_RETURN_NONE ;
 scalar_t__ check_and_adjust_index (int*,int,int,int *) ;
 scalar_t__ error_converting (int) ;

__attribute__((used)) static PyObject *
array_setscalar(PyArrayObject *self, PyObject *args)
{
    npy_intp multi_index[NPY_MAXDIMS];
    int n = PyTuple_GET_SIZE(args) - 1;
    int idim, ndim = PyArray_NDIM(self);
    PyObject *obj;

    if (n < 0) {
        PyErr_SetString(PyExc_ValueError,
                "itemset must have at least one argument");
        return ((void*)0);
    }
    if (PyArray_FailUnlessWriteable(self, "assignment destination") < 0) {
        return ((void*)0);
    }

    obj = PyTuple_GET_ITEM(args, n);


    if (n == 1 && PyTuple_Check(PyTuple_GET_ITEM(args, 0))) {
        args = PyTuple_GET_ITEM(args, 0);
        n = PyTuple_GET_SIZE(args);
    }

    if (n == 0) {
        if (PyArray_SIZE(self) == 1) {
            for (idim = 0; idim < ndim; ++idim) {
                multi_index[idim] = 0;
            }
        }
        else {
            PyErr_SetString(PyExc_ValueError,
                    "can only convert an array of size 1 to a Python scalar");
        }
    }

    else if (n == 1 && ndim != 1) {
        npy_intp *shape = PyArray_SHAPE(self);
        npy_intp value, size = PyArray_SIZE(self);

        value = PyArray_PyIntAsIntp(PyTuple_GET_ITEM(args, 0));
        if (error_converting(value)) {
            return ((void*)0);
        }

        if (check_and_adjust_index(&value, size, -1, ((void*)0)) < 0) {
            return ((void*)0);
        }


        for (idim = ndim-1; idim >= 0; --idim) {
            multi_index[idim] = value % shape[idim];
            value /= shape[idim];
        }
    }

    else if (n == ndim) {
        npy_intp value;

        for (idim = 0; idim < ndim; ++idim) {
            value = PyArray_PyIntAsIntp(PyTuple_GET_ITEM(args, idim));
            if (error_converting(value)) {
                return ((void*)0);
            }
            multi_index[idim] = value;
        }
    }
    else {
        PyErr_SetString(PyExc_ValueError,
                "incorrect number of indices for array");
        return ((void*)0);
    }

    if (PyArray_MultiIndexSetItem(self, multi_index, obj) < 0) {
        return ((void*)0);
    }
    else {
        Py_RETURN_NONE;
    }
}

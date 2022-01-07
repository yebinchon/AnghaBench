
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ npy_intp ;
typedef int PyObject ;
typedef int PyArrayObject ;


 scalar_t__ PyArray_DIM (int *,int) ;
 int * PyArray_GETITEM (int *,char*) ;
 int PyArray_NDIM (int *) ;
 scalar_t__ PyArray_STRIDE (int *,int) ;
 int * PyList_New (scalar_t__) ;
 int PyList_SET_ITEM (int *,scalar_t__,int *) ;
 int Py_DECREF (int *) ;

__attribute__((used)) static PyObject *
recursive_tolist(PyArrayObject *self, char *dataptr, int startdim)
{
    npy_intp i, n, stride;
    PyObject *ret, *item;


    if (startdim >= PyArray_NDIM(self)) {
        return PyArray_GETITEM(self, dataptr);
    }

    n = PyArray_DIM(self, startdim);
    stride = PyArray_STRIDE(self, startdim);

    ret = PyList_New(n);
    if (ret == ((void*)0)) {
        return ((void*)0);
    }

    for (i = 0; i < n; ++i) {
        item = recursive_tolist(self, dataptr, startdim+1);
        if (item == ((void*)0)) {
            Py_DECREF(ret);
            return ((void*)0);
        }
        PyList_SET_ITEM(ret, i, item);

        dataptr += stride;
    }

    return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Py_ssize_t ;
typedef int PyObject ;
typedef int PyArray_Dims ;
typedef int PyArrayObject ;
typedef int NPY_ORDER ;


 int NPY_CORDER ;
 int NpyArg_ParseKeywords (int *,char*,char**,int ,int *) ;
 int PyArg_ParseTuple (int *,char*,int (*) (int *,int *),int *) ;
 int PyArray_IntpConverter (int *,int *) ;
 int * PyArray_Newshape (int *,int *,int ) ;
 int PyArray_OrderConverter ;
 int * PyArray_View (int *,int *,int *) ;
 int PyErr_Occurred () ;
 int PyErr_SetString (int ,char*) ;
 int PyExc_TypeError ;
 scalar_t__ PyTuple_GET_ITEM (int *,int ) ;
 int PyTuple_Size (int *) ;
 scalar_t__ Py_None ;
 int npy_free_cache_dim_obj (int ) ;

__attribute__((used)) static PyObject *
array_reshape(PyArrayObject *self, PyObject *args, PyObject *kwds)
{
    static char *keywords[] = {"order", ((void*)0)};
    PyArray_Dims newshape;
    PyObject *ret;
    NPY_ORDER order = NPY_CORDER;
    Py_ssize_t n = PyTuple_Size(args);

    if (!NpyArg_ParseKeywords(kwds, "|O&", keywords,
                PyArray_OrderConverter, &order)) {
        return ((void*)0);
    }

    if (n <= 1) {
        if (n != 0 && PyTuple_GET_ITEM(args, 0) == Py_None) {
            return PyArray_View(self, ((void*)0), ((void*)0));
        }
        if (!PyArg_ParseTuple(args, "O&:reshape", PyArray_IntpConverter,
                              &newshape)) {
            return ((void*)0);
        }
    }
    else {
        if (!PyArray_IntpConverter(args, &newshape)) {
            if (!PyErr_Occurred()) {
                PyErr_SetString(PyExc_TypeError,
                                "invalid shape");
            }
            goto fail;
        }
    }
    ret = PyArray_Newshape(self, &newshape, order);
    npy_free_cache_dim_obj(newshape);
    return ret;

 fail:
    npy_free_cache_dim_obj(newshape);
    return ((void*)0);
}

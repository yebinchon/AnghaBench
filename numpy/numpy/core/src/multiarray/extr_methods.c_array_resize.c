
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Py_ssize_t ;
typedef int PyObject ;
typedef int PyArray_Dims ;
typedef int PyArrayObject ;


 int NPY_ANYORDER ;
 int NpyArg_ParseKeywords (int *,char*,char**,int*) ;
 int PyArray_IntpConverter (int *,int *) ;
 int * PyArray_Resize (int *,int *,int,int ) ;
 int PyErr_Occurred () ;
 int PyErr_SetString (int ,char*) ;
 int PyExc_TypeError ;
 int * PyTuple_GET_ITEM (int *,int ) ;
 int PyTuple_Size (int *) ;
 int Py_DECREF (int *) ;
 int * Py_None ;
 int Py_RETURN_NONE ;
 int npy_free_cache_dim_obj (int ) ;

__attribute__((used)) static PyObject *
array_resize(PyArrayObject *self, PyObject *args, PyObject *kwds)
{
    static char *kwlist[] = {"refcheck", ((void*)0)};
    Py_ssize_t size = PyTuple_Size(args);
    int refcheck = 1;
    PyArray_Dims newshape;
    PyObject *ret, *obj;


    if (!NpyArg_ParseKeywords(kwds, "|i", kwlist, &refcheck)) {
        return ((void*)0);
    }

    if (size == 0) {
        Py_RETURN_NONE;
    }
    else if (size == 1) {
        obj = PyTuple_GET_ITEM(args, 0);
        if (obj == Py_None) {
            Py_RETURN_NONE;
        }
        args = obj;
    }
    if (!PyArray_IntpConverter(args, &newshape)) {
        if (!PyErr_Occurred()) {
            PyErr_SetString(PyExc_TypeError, "invalid shape");
        }
        return ((void*)0);
    }

    ret = PyArray_Resize(self, &newshape, refcheck, NPY_ANYORDER);
    npy_free_cache_dim_obj(newshape);
    if (ret == ((void*)0)) {
        return ((void*)0);
    }
    Py_DECREF(ret);
    Py_RETURN_NONE;
}

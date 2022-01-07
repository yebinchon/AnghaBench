
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; int elsize; } ;
typedef int Py_ssize_t ;
typedef int PyObject ;
typedef int PyArrayObject ;


 int PyArray_DATA (int *) ;
 TYPE_1__* PyArray_DESCR (int *) ;
 int PyArray_DIMS (int *) ;
 scalar_t__ PyArray_ISEXTENDED (int *) ;
 int PyArray_NBYTES (int *) ;
 int PyArray_NDIM (int *) ;
 int PyArray_STRIDES (int *) ;
 int PyArray_free (char*) ;
 char* PyArray_malloc (int) ;
 int * PyErr_NoMemory () ;
 int * PyUString_FromFormat (char*,char*,int ,...) ;
 int * PyUString_FromStringAndSize (char*,int) ;
 scalar_t__ dump_data (char**,int*,int*,int ,int ,int ,int ,int *) ;

__attribute__((used)) static PyObject *
array_repr_builtin(PyArrayObject *self, int repr)
{
    PyObject *ret;
    char *string;

    Py_ssize_t n = 0, max_n = PyArray_NBYTES(self) * 4 + 7;

    if ((string = PyArray_malloc(max_n)) == ((void*)0)) {
        return PyErr_NoMemory();
    }

    if (dump_data(&string, &n, &max_n, PyArray_DATA(self),
                  PyArray_NDIM(self), PyArray_DIMS(self),
                  PyArray_STRIDES(self), self) < 0) {
        PyArray_free(string);
        return ((void*)0);
    }

    if (repr) {
        if (PyArray_ISEXTENDED(self)) {
            ret = PyUString_FromFormat("array(%s, '%c%d')",
                                       string,
                                       PyArray_DESCR(self)->type,
                                       PyArray_DESCR(self)->elsize);
        }
        else {
            ret = PyUString_FromFormat("array(%s, '%c')",
                                       string,
                                       PyArray_DESCR(self)->type);
        }
    }
    else {
        ret = PyUString_FromStringAndSize(string, n);
    }

    PyArray_free(string);
    return ret;
}

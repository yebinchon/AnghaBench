
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;
typedef int PyArrayObject ;


 int PyArg_ParseTupleAndKeywords (int *,int *,char*,char**,int **,int **) ;
 int PyArray_Check (int *) ;
 scalar_t__ PyArray_MatrixProduct2 (int *,int *,int *) ;
 int * PyArray_Return (int *) ;
 int PyErr_SetString (int ,char*) ;
 int PyExc_TypeError ;
 int * Py_None ;

__attribute__((used)) static PyObject *
array_dot(PyArrayObject *self, PyObject *args, PyObject *kwds)
{
    PyObject *a = (PyObject *)self, *b, *o = ((void*)0);
    PyArrayObject *ret;
    char* kwlist[] = {"b", "out", ((void*)0) };


    if (!PyArg_ParseTupleAndKeywords(args, kwds, "O|O:dot", kwlist, &b, &o)) {
        return ((void*)0);
    }

    if (o != ((void*)0)) {
        if (o == Py_None) {
            o = ((void*)0);
        }
        else if (!PyArray_Check(o)) {
            PyErr_SetString(PyExc_TypeError,
                            "'out' must be an array");
            return ((void*)0);
        }
    }
    ret = (PyArrayObject *)PyArray_MatrixProduct2(a, b, (PyArrayObject *)o);
    return PyArray_Return(ret);
}

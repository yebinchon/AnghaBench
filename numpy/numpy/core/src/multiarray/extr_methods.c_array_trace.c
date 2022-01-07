
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;
typedef int PyArray_Descr ;
typedef int PyArrayObject ;


 int PyArg_ParseTupleAndKeywords (int *,int *,char*,char**,int*,int*,int*,int ,int **,int ,int **) ;
 int PyArray_DescrConverter2 ;
 int PyArray_OutputConverter ;
 int * PyArray_Return (int *) ;
 scalar_t__ PyArray_Trace (int *,int,int,int,int,int *) ;
 int Py_XDECREF (int *) ;
 int _CHKTYPENUM (int *) ;

__attribute__((used)) static PyObject *
array_trace(PyArrayObject *self, PyObject *args, PyObject *kwds)
{
    int axis1 = 0, axis2 = 1, offset = 0;
    PyArray_Descr *dtype = ((void*)0);
    PyArrayObject *out = ((void*)0);
    int rtype;
    static char *kwlist[] = {"offset", "axis1", "axis2", "dtype", "out", ((void*)0)};

    if (!PyArg_ParseTupleAndKeywords(args, kwds, "|iiiO&O&:trace", kwlist,
                                     &offset,
                                     &axis1,
                                     &axis2,
                                     PyArray_DescrConverter2, &dtype,
                                     PyArray_OutputConverter, &out)) {
        Py_XDECREF(dtype);
        return ((void*)0);
    }

    rtype = _CHKTYPENUM(dtype);
    Py_XDECREF(dtype);
    return PyArray_Return((PyArrayObject *)PyArray_Trace(self, offset, axis1, axis2, rtype, out));
}

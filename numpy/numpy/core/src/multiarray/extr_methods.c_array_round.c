
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;
typedef int PyArrayObject ;


 int PyArg_ParseTupleAndKeywords (int *,int *,char*,char**,int*,int ,int **) ;
 int PyArray_OutputConverter ;
 int * PyArray_Return (int *) ;
 scalar_t__ PyArray_Round (int *,int,int *) ;

__attribute__((used)) static PyObject *
array_round(PyArrayObject *self, PyObject *args, PyObject *kwds)
{
    int decimals = 0;
    PyArrayObject *out = ((void*)0);
    static char *kwlist[] = {"decimals", "out", ((void*)0)};

    if (!PyArg_ParseTupleAndKeywords(args, kwds, "|iO&:round", kwlist,
                                     &decimals,
                                     PyArray_OutputConverter, &out)) {
        return ((void*)0);
    }
    return PyArray_Return((PyArrayObject *)PyArray_Round(self, decimals, out));
}

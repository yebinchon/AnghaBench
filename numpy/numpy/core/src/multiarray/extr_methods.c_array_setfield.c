
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;
typedef int PyArray_Descr ;
typedef int PyArrayObject ;


 int PyArg_ParseTupleAndKeywords (int *,int *,char*,char**,int **,int ,int **,int*) ;
 int PyArray_DescrConverter ;
 scalar_t__ PyArray_SetField (int *,int *,int,int *) ;
 int Py_RETURN_NONE ;
 int Py_XDECREF (int *) ;

__attribute__((used)) static PyObject *
array_setfield(PyArrayObject *self, PyObject *args, PyObject *kwds)
{
    PyArray_Descr *dtype = ((void*)0);
    int offset = 0;
    PyObject *value;
    static char *kwlist[] = {"value", "dtype", "offset", 0};

    if (!PyArg_ParseTupleAndKeywords(args, kwds, "OO&|i:setfield", kwlist,
                                     &value,
                                     PyArray_DescrConverter, &dtype,
                                     &offset)) {
        Py_XDECREF(dtype);
        return ((void*)0);
    }

    if (PyArray_SetField(self, dtype, offset, value) < 0) {
        return ((void*)0);
    }
    Py_RETURN_NONE;
}

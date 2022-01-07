
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;
typedef int PyArray_Descr ;
typedef int PyArrayObject ;


 int PyArg_ParseTupleAndKeywords (int *,int *,char*,char**,int ,int **,int*) ;
 int PyArray_DescrConverter ;
 int * PyArray_GetField (int *,int *,int) ;
 int Py_XDECREF (int *) ;

__attribute__((used)) static PyObject *
array_getfield(PyArrayObject *self, PyObject *args, PyObject *kwds)
{

    PyArray_Descr *dtype = ((void*)0);
    int offset = 0;
    static char *kwlist[] = {"dtype", "offset", 0};

    if (!PyArg_ParseTupleAndKeywords(args, kwds, "O&|i:getfield", kwlist,
                                     PyArray_DescrConverter, &dtype,
                                     &offset)) {
        Py_XDECREF(dtype);
        return ((void*)0);
    }

    return PyArray_GetField(self, dtype, offset);
}

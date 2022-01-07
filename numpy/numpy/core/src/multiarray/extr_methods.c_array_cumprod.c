
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;
typedef int PyArray_Descr ;
typedef int PyArrayObject ;


 int NPY_MAXDIMS ;
 int PyArg_ParseTupleAndKeywords (int *,int *,char*,char**,int ,int*,int ,int **,int ,int **) ;
 int PyArray_AxisConverter ;
 int * PyArray_CumProd (int *,int,int,int *) ;
 int PyArray_DescrConverter2 ;
 int PyArray_OutputConverter ;
 int Py_XDECREF (int *) ;
 int _CHKTYPENUM (int *) ;

__attribute__((used)) static PyObject *
array_cumprod(PyArrayObject *self, PyObject *args, PyObject *kwds)
{
    int axis = NPY_MAXDIMS;
    PyArray_Descr *dtype = ((void*)0);
    PyArrayObject *out = ((void*)0);
    int rtype;
    static char *kwlist[] = {"axis", "dtype", "out", ((void*)0)};

    if (!PyArg_ParseTupleAndKeywords(args, kwds, "|O&O&O&:cumprod", kwlist,
                                     PyArray_AxisConverter, &axis,
                                     PyArray_DescrConverter2, &dtype,
                                     PyArray_OutputConverter, &out)) {
        Py_XDECREF(dtype);
        return ((void*)0);
    }

    rtype = _CHKTYPENUM(dtype);
    Py_XDECREF(dtype);
    return PyArray_CumProd(self, axis, rtype, out);
}
